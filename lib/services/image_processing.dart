import "dart:io";
import "dart:math";
import "dart:typed_data";

import "package:google_mlkit_selfie_segmentation/google_mlkit_selfie_segmentation.dart";
import "package:image/image.dart" as img;
import "package:path_provider/path_provider.dart";

import "../models/background_option.dart";
import "../models/export_mode.dart";

class SegmentationResult {
  SegmentationResult({
    required this.confidences,
    required this.width,
    required this.height,
  });

  final Float32List confidences;
  final int width;
  final int height;
}

class ImageProcessing {
  static Future<Uint8List> autoCropToAspect(
    Uint8List bytes,
    double aspectRatio,
  ) async {
    final image = img.decodeImage(bytes);
    if (image == null) {
      return bytes;
    }

    final width = image.width;
    final height = image.height;
    final currentRatio = width / height;

    int cropWidth = width;
    int cropHeight = height;

    if (currentRatio > aspectRatio) {
      cropWidth = (height * aspectRatio).round();
    } else {
      cropHeight = (width / aspectRatio).round();
    }

    final offsetX = ((width - cropWidth) / 2).round();
    final offsetY = ((height - cropHeight) / 2).round();

    final cropped = img.copyCrop(
      image,
      x: offsetX,
      y: offsetY,
      width: cropWidth,
      height: cropHeight,
    );

    return Uint8List.fromList(img.encodeJpg(cropped, quality: 95));
  }

  static Future<SegmentationResult?> segmentPerson(Uint8List bytes) async {
    final tempDir = await getTemporaryDirectory();
    final tempFile = File(
      "${tempDir.path}/ppm_segment_${DateTime.now().millisecondsSinceEpoch}.jpg",
    );
    await tempFile.writeAsBytes(bytes, flush: true);

    final segmenter = SelfieSegmenter(mode: SegmenterMode.single);
    try {
      final inputImage = InputImage.fromFilePath(tempFile.path);
      final mask = await segmenter.processImage(inputImage);
      if (mask == null) {
        return null;
      }
      final confidences = Float32List(mask.confidences.length);
      for (var i = 0; i < mask.confidences.length; i++) {
        confidences[i] = mask.confidences[i].toDouble();
      }
      return SegmentationResult(
        confidences: confidences,
        width: mask.width,
        height: mask.height,
      );
    } finally {
      await segmenter.close();
      if (await tempFile.exists()) {
        await tempFile.delete();
      }
    }
  }

  static Future<Uint8List> renderPreview({
    required Uint8List sourceBytes,
    required SegmentationResult? mask,
    required BackgroundOption background,
    required double edgeSmooth,
    required double feather,
    required bool enhanceEdges,
    required int outputWidth,
    required int outputHeight,
  }) async {
    final image = img.decodeImage(sourceBytes);
    if (image == null) {
      return sourceBytes;
    }

    img.Image composite = image;
    if (mask != null) {
      composite = _applyBackground(
        source: image,
        mask: mask,
        background: background,
        edgeSmooth: edgeSmooth,
        feather: feather,
        enhanceEdges: enhanceEdges,
      );
    }

    final resized = img.copyResize(
      composite,
      width: outputWidth,
      height: outputHeight,
      interpolation: img.Interpolation.cubic,
    );

    return Uint8List.fromList(img.encodeJpg(resized, quality: 92));
  }

  static Future<Uint8List> buildExport({
    required Uint8List sourceBytes,
    required SegmentationResult? mask,
    required BackgroundOption background,
    required double edgeSmooth,
    required double feather,
    required bool enhanceEdges,
    required int outputWidth,
    required int outputHeight,
    required ExportMode exportMode,
    required int? targetBytes,
  }) async {
    final image = img.decodeImage(sourceBytes);
    if (image == null) {
      return sourceBytes;
    }

    img.Image composite = image;
    if (mask != null) {
      composite = _applyBackground(
        source: image,
        mask: mask,
        background: background,
        edgeSmooth: edgeSmooth,
        feather: feather,
        enhanceEdges: enhanceEdges,
      );
    }

    final resized = img.copyResize(
      composite,
      width: outputWidth,
      height: outputHeight,
      interpolation: img.Interpolation.cubic,
    );

    final finalImage = _applyExportMode(resized, exportMode);
    return _encodeWithTarget(finalImage, targetBytes);
  }

  static img.Image _applyBackground({
    required img.Image source,
    required SegmentationResult mask,
    required BackgroundOption background,
    required double edgeSmooth,
    required double feather,
    required bool enhanceEdges,
  }) {
    final width = source.width;
    final height = source.height;

    img.Image maskImage = _buildMaskImage(mask, width, height);
    final blurRadius = (edgeSmooth / 100 * 6).round();
    if (blurRadius > 0) {
      maskImage = img.gaussianBlur(maskImage, radius: blurRadius);
    }

    final img.Image backgroundImage;
    if (background.isBlur) {
      backgroundImage = img.gaussianBlur(
        img.copyResize(source, width: width, height: height),
        radius: 18,
      );
    } else {
      backgroundImage = img.Image(width: width, height: height);
      img.fill(
        backgroundImage,
        color: img.ColorRgb8(
          _colorChannel(background.color.r),
          _colorChannel(background.color.g),
          _colorChannel(background.color.b),
        ),
      );
    }

    final output = img.Image(width: width, height: height);

    final featherFactor = feather / 80;
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final fg = source.getPixel(x, y);
        final bg = backgroundImage.getPixel(x, y);
        var alpha = maskImage.getPixel(x, y).r / 255.0;
        if (enhanceEdges) {
          alpha = pow(alpha, 0.85).toDouble();
        }
        if (feather > 0) {
          alpha = pow(alpha, 1.0 + featherFactor).toDouble();
        }
        alpha = alpha.clamp(0.0, 1.0);

        final r = (fg.r * alpha + bg.r * (1 - alpha)).round();
        final g = (fg.g * alpha + bg.g * (1 - alpha)).round();
        final b = (fg.b * alpha + bg.b * (1 - alpha)).round();
        output.setPixelRgba(x, y, r, g, b, 255);
      }
    }

    return output;
  }

  static img.Image _buildMaskImage(
    SegmentationResult mask,
    int width,
    int height,
  ) {
    final maskImage = img.Image(width: mask.width, height: mask.height);
    var index = 0;
    for (var y = 0; y < mask.height; y++) {
      for (var x = 0; x < mask.width; x++) {
        final confidence = mask.confidences[index].clamp(0.0, 1.0);
        final value = (confidence * 255).round();
        maskImage.setPixelRgba(x, y, value, value, value, 255);
        index += 1;
      }
    }

    if (mask.width == width && mask.height == height) {
      return maskImage;
    }

    return img.copyResize(maskImage, width: width, height: height);
  }

  static img.Image _applyExportMode(img.Image base, ExportMode exportMode) {
    switch (exportMode) {
      case ExportMode.single:
        return base;
      case ExportMode.sheet4x6:
        return _composeSheet(base, 1200, 1800, rows: 2, columns: 2);
      case ExportMode.sheetA4:
        return _composeSheet(base, 2480, 3508, rows: 4, columns: 2);
    }
  }

  static img.Image _composeSheet(
    img.Image photo,
    int canvasWidth,
    int canvasHeight, {
    required int rows,
    required int columns,
  }) {
    final canvas = img.Image(width: canvasWidth, height: canvasHeight);
    img.fill(canvas, color: img.ColorRgb8(255, 255, 255));

    const margin = 60;
    final cellWidth = ((canvasWidth - margin * (columns + 1)) / columns).floor();
    final cellHeight = ((canvasHeight - margin * (rows + 1)) / rows).floor();
    final resized = img.copyResize(
      photo,
      width: cellWidth,
      height: cellHeight,
      interpolation: img.Interpolation.cubic,
    );

    for (var row = 0; row < rows; row++) {
      for (var col = 0; col < columns; col++) {
        final x = margin + col * (cellWidth + margin);
        final y = margin + row * (cellHeight + margin);
        img.compositeImage(canvas, resized, dstX: x, dstY: y);
      }
    }

    return canvas;
  }

  static Uint8List _encodeWithTarget(img.Image image, int? targetBytes) {
    var quality = 95;
    var encoded = Uint8List.fromList(img.encodeJpg(image, quality: quality));
    if (targetBytes == null) {
      return encoded;
    }

    while (encoded.lengthInBytes > targetBytes && quality > 35) {
      quality -= 5;
      encoded = Uint8List.fromList(img.encodeJpg(image, quality: quality));
    }

    return encoded;
  }

  static int _colorChannel(double channel) =>
      (channel * 255).round().clamp(0, 255);
}
