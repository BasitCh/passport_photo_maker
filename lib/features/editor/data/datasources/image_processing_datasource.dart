import 'dart:typed_data';
import 'dart:math' as math;
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/entities/processed_image.dart';
import '../../domain/repositories/image_repository.dart';

/// Data source for image processing operations
@lazySingleton
class ImageProcessingDataSource {
  /// Generate preview image with all effects applied
  Future<ProcessedImage> generatePreview({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
  }) async {
    return _processImage(
      sourceBytes: sourceBytes,
      maskData: maskData,
      maskEdits: maskEdits,
      settings: settings,
      width: 600,
      height: 600,
      quality: 80,
    );
  }

  /// Build final export image
  Future<ProcessedImage> buildExport({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
    required ExportQuality quality,
  }) async {
    final qualityValue = quality == ExportQuality.hd
        ? 95
        : quality == ExportQuality.high
            ? 85
            : 75;

    return _processImage(
      sourceBytes: sourceBytes,
      maskData: maskData,
      maskEdits: maskEdits,
      settings: settings,
      width: preset.width,
      height: preset.height,
      quality: qualityValue,
    );
  }

  Future<ProcessedImage> _processImage({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required int width,
    required int height,
    required int quality,
  }) async {
    // Decode source image
    var image = img.decodeImage(sourceBytes);
    if (image == null) {
      throw Exception('Failed to decode image');
    }

    // Apply enhancement
    image = _applyEnhancement(image, settings.enhance);

    // Create background
    final background = _createBackground(width, height, settings.background);

    // Apply cutout if mask exists
    if (maskData != null) {
      image = _applyCutout(
        image,
        maskData,
        maskEdits,
        settings.cutout,
      );

      // Apply effects
      if (settings.shadow.enabled) {
        _applyShadow(background, image, settings.shadow);
      }

      if (settings.glow.enabled) {
        image = _applyGlow(image, settings.glow);
      }

      if (settings.outline.enabled) {
        image = _applyOutline(image, settings.outline);
      }
    }

    // Composite onto background
    final result = img.Image(width: width, height: height);
    img.compositeImage(result, background);

    // Center and fit the subject
    final fitted = _fitToSize(image, width, height);
    img.compositeImage(result, fitted, center: true);

    // Apply frame shape clipping
    final shaped = _applyFrameShape(result, settings.frameShape);

    // Encode to bytes
    final bytes = img.encodeJpg(shaped, quality: quality);

    return ProcessedImage(
      bytes: Uint8List.fromList(bytes),
      width: width,
      height: height,
      format: ImageFormat.jpg,
    );
  }

  img.Image _createBackground(
      int width, int height, BackgroundStyle background) {
    final bg = img.Image(width: width, height: height);

    return background.when(
      solid: (id, label, color) {
        img.fill(
          bg,
          color: img.ColorRgb8(color.red, color.green, color.blue),
        );
        return bg;
      },
      gradient: (id, label, colorA, colorB, direction) {
        for (var y = 0; y < height; y++) {
          final t = direction == GradientDirection.topBottom
              ? y / height
              : direction == GradientDirection.bottomTop
                  ? 1 - (y / height)
                  : 0.5;

          final r = (colorA.red + (colorB.red - colorA.red) * t).round();
          final g = (colorA.green + (colorB.green - colorA.green) * t).round();
          final b = (colorA.blue + (colorB.blue - colorA.blue) * t).round();

          for (var x = 0; x < width; x++) {
            bg.setPixelRgb(x, y, r, g, b);
          }
        }
        return bg;
      },
      image: (id, label, pack, assetPath) {
        // For now, return solid background
        // TODO: Load actual background images from assets
        img.fill(bg, color: img.ColorRgb8(30, 40, 60));
        return bg;
      },
    );
  }

  img.Image _applyCutout(
    img.Image image,
    MaskData maskData,
    MaskEdits? maskEdits,
    CutoutSettings settings,
  ) {
    // Apply mask to create transparent cutout
    final result = img.Image.from(image);

    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final maskX = (x * maskData.width / image.width).floor();
        final maskY = (y * maskData.height / image.height).floor();
        final maskIndex = maskY * maskData.width + maskX;

        if (maskIndex >= 0 && maskIndex < maskData.confidenceMap.length) {
          var alpha = maskData.confidenceMap[maskIndex];

          // Apply user edits if available
          if (maskEdits != null && maskIndex < maskEdits.alphaMap.length) {
            final edit = maskEdits.alphaMap[maskIndex];
            alpha = ((alpha * edit) / 255).round();
          }

          // Apply edge smoothing
          if (settings.edgeSmooth > 0) {
            alpha = _smoothAlpha(alpha, settings.edgeSmooth);
          }

          result.setPixelRgba(
            x,
            y,
            image.getPixel(x, y).r.toInt(),
            image.getPixel(x, y).g.toInt(),
            image.getPixel(x, y).b.toInt(),
            alpha,
          );
        }
      }
    }

    return result;
  }

  int _smoothAlpha(int alpha, double smooth) {
    // Simple alpha smoothing
    final factor = 1 - (smooth / 100);
    return (alpha * factor).round().clamp(0, 255);
  }

  img.Image _applyEnhancement(img.Image image, EnhanceSettings enhance) {
    var result = img.Image.from(image);

    if (enhance.brightness != 0) {
      result = img.adjustColor(
        result,
        brightness: enhance.brightness,
      );
    }

    if (enhance.contrast != 0) {
      result = img.adjustColor(
        result,
        contrast: enhance.contrast,
      );
    }

    if (enhance.saturation != 0) {
      result = img.adjustColor(
        result,
        saturation: enhance.saturation,
      );
    }

    return result;
  }

  void _applyShadow(
    img.Image background,
    img.Image subject,
    ShadowSettings shadow,
  ) {
    // Apply basic shadow effect
    // TODO: Implement proper shadow with blur and offset
  }

  img.Image _applyGlow(img.Image image, GlowSettings glow) {
    // Apply glow effect around subject edges
    // TODO: Implement proper glow effect
    return image;
  }

  img.Image _applyOutline(img.Image image, OutlineSettings outline) {
    // Apply outline around subject
    // TODO: Implement proper outline effect
    return image;
  }

  img.Image _fitToSize(img.Image image, int targetWidth, int targetHeight) {
    return img.copyResize(
      image,
      width: targetWidth,
      height: targetHeight,
      interpolation: img.Interpolation.linear,
    );
  }

  img.Image _applyFrameShape(img.Image image, FrameShape shape) {
    switch (shape) {
      case FrameShape.circle:
        return _applyCircleMask(image);
      case FrameShape.roundedSquare:
        return _applyRoundedMask(image, 36);
      case FrameShape.square:
        return image;
    }
  }

  img.Image _applyCircleMask(img.Image image) {
    final result = img.Image.from(image);
    final centerX = image.width / 2;
    final centerY = image.height / 2;
    final radius = math.min(centerX, centerY);

    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final dx = x - centerX;
        final dy = y - centerY;
        final distance = math.sqrt(dx * dx + dy * dy);

        if (distance > radius) {
          result.setPixelRgba(x, y, 0, 0, 0, 0);
        }
      }
    }

    return result;
  }

  img.Image _applyRoundedMask(img.Image image, int cornerRadius) {
    // TODO: Implement rounded corner mask
    return image;
  }
}
