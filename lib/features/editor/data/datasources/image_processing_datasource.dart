import 'dart:io';
import 'dart:isolate';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/entities/processed_image.dart';
import '../../domain/repositories/image_repository.dart';

/// Data source for image processing operations
@lazySingleton
class ImageProcessingDataSource {
  String? _cachedBackgroundKey;
  Uint8List? _cachedBackgroundBytes;

  /// Generate preview image with all effects applied
  Future<ProcessedImage> generatePreview({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
  }) async {
    final previewSize = _resolvePreviewSize(preset);
    final backgroundBytes = await _loadBackgroundBytes(settings.background);
    final result = await compute(
      _processImageIsolate,
      _buildRequest(
        sourceBytes: sourceBytes,
        settings: settings,
        width: previewSize.width,
        height: previewSize.height,
        quality: 70,
        maskData: maskData,
        maskEdits: maskEdits,
        backgroundBytes: backgroundBytes,
      ),
    );

    return _mapResult(result);
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
            ? 88
            : 78;
    final backgroundBytes = await _loadBackgroundBytes(settings.background);

    final result = await compute(
      _processImageIsolate,
      _buildRequest(
        sourceBytes: sourceBytes,
        settings: settings,
        width: preset.width,
        height: preset.height,
        quality: qualityValue,
        maskData: maskData,
        maskEdits: maskEdits,
        backgroundBytes: backgroundBytes,
      ),
    );

    return _mapResult(result);
  }

  _Size _resolvePreviewSize(ExportPreset preset) {
    const maxSide = 720.0;
    final maxDim = math.max(preset.width, preset.height).toDouble();
    final scale = maxDim <= maxSide ? 1.0 : maxSide / maxDim;
    final width = (preset.width * scale).round().clamp(1, preset.width);
    final height = (preset.height * scale).round().clamp(1, preset.height);
    return _Size(width, height);
  }

  Map<String, dynamic> _buildRequest({
    required Uint8List sourceBytes,
    required EditorSettings settings,
    required int width,
    required int height,
    required int quality,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required Uint8List? backgroundBytes,
  }) {
    return {
      'sourceBytes': TransferableTypedData.fromList([sourceBytes]),
      'maskData': maskData == null
          ? null
          : {
              'width': maskData.width,
              'height': maskData.height,
              'confidence': TransferableTypedData.fromList(
                [maskData.confidenceMap],
              ),
            },
      'maskEdits': maskEdits == null
          ? null
          : {
              'width': maskEdits.width,
              'height': maskEdits.height,
              'alpha': TransferableTypedData.fromList([maskEdits.alphaMap]),
            },
      'settings': _serializeSettings(settings),
      'width': width,
      'height': height,
      'quality': quality,
      'backgroundBytes': backgroundBytes == null
          ? null
          : TransferableTypedData.fromList([backgroundBytes]),
    };
  }

  ProcessedImage _mapResult(Map<String, dynamic> result) {
    return ProcessedImage(
      bytes: result['bytes'] as Uint8List,
      width: result['width'] as int,
      height: result['height'] as int,
      format: ImageFormat.jpg,
    );
  }

  Map<String, dynamic> _serializeSettings(EditorSettings settings) {
    return {
      'background': _serializeBackground(settings.background),
      'frameShape': settings.frameShape.index,
      'cutout': {
        'scale': settings.cutout.scale,
        'offsetX': settings.cutout.offsetX,
        'offsetY': settings.cutout.offsetY,
      },
      'outline': {
        'enabled': settings.outline.enabled,
        'color': settings.outline.color.value,
        'thickness': settings.outline.thickness,
        'blur': settings.outline.blur,
      },
      'glow': {
        'enabled': settings.glow.enabled,
        'color': settings.glow.color.value,
        'intensity': settings.glow.intensity,
        'spread': settings.glow.spread,
      },
      'shadow': {
        'enabled': settings.shadow.enabled,
        'opacity': settings.shadow.opacity,
        'blur': settings.shadow.blur,
        'offset': settings.shadow.offset,
      },
      'enhance': {
        'brightness': settings.enhance.brightness,
        'contrast': settings.enhance.contrast,
        'sharpness': settings.enhance.sharpness,
        'warmth': settings.enhance.warmth,
        'saturation': settings.enhance.saturation,
      },
    };
  }

  Map<String, dynamic> _serializeBackground(BackgroundStyle background) {
    return background.when(
      solid: (id, label, color) => {
        'type': 'solid',
        'color': color.value,
      },
      gradient: (id, label, colorA, colorB, direction) => {
        'type': 'gradient',
        'colorA': colorA.value,
        'colorB': colorB.value,
        'direction': direction.index,
      },
      image: (id, label, pack, assetPath) => {
        'type': 'image',
        'pack': pack,
        'assetPath': assetPath,
      },
    );
  }

  Future<Uint8List?> _loadBackgroundBytes(BackgroundStyle background) async {
    return background.maybeWhen(
      image: (id, label, pack, assetPath) async {
        if (assetPath.isEmpty) return null;
        final key = 'image:$pack:$assetPath';
        if (_cachedBackgroundKey == key && _cachedBackgroundBytes != null) {
          return _cachedBackgroundBytes;
        }
        if (pack == 'file' || assetPath.startsWith('/')) {
          final file = File(assetPath);
          if (!await file.exists()) return null;
          final bytes = await file.readAsBytes();
          _cachedBackgroundKey = key;
          _cachedBackgroundBytes = bytes;
          return bytes;
        }
        final bundlePath = pack.isEmpty
            ? assetPath
            : 'packages/$pack/$assetPath';
        final data = await rootBundle.load(bundlePath);
        final bytes = data.buffer.asUint8List();
        _cachedBackgroundKey = key;
        _cachedBackgroundBytes = bytes;
        return bytes;
      },
      orElse: () async => null,
    );
  }
}

Map<String, dynamic> _processImageIsolate(Map<String, dynamic> request) {
  final width = request['width'] as int;
  final height = request['height'] as int;
  final quality = request['quality'] as int;
  final settings = request['settings'] as Map<String, dynamic>;

  final sourceBytes =
      (request['sourceBytes'] as TransferableTypedData).materialize().asUint8List();

  final maskData = request['maskData'] as Map<String, dynamic>?;
  final maskEdits = request['maskEdits'] as Map<String, dynamic>?;
  final backgroundBytes = request['backgroundBytes'] as TransferableTypedData?;

  img.Image? sourceImage = img.decodeImage(sourceBytes);
  if (sourceImage == null) {
    throw Exception('Failed to decode image');
  }

  sourceImage = _applyEnhancement(sourceImage, settings['enhance']);

  final background = _createBackground(
    width,
    height,
    settings['background'] as Map<String, dynamic>,
    backgroundBytes?.materialize().asUint8List(),
  );

  final result = img.Image(width: width, height: height, numChannels: 4);
  img.compositeImage(result, background);

  final cutout = _buildCutout(
    sourceImage,
    maskData,
    maskEdits,
  );

  final cutoutSettings = settings['cutout'] as Map<String, dynamic>;
  final frameShape = settings['frameShape'] as int;
  final fittedCutout = _fitCutoutToCanvas(
    cutout,
    width: width,
    height: height,
    frameShape: frameShape,
    scale: (cutoutSettings['scale'] as num).toDouble(),
  );

  final offset = _resolveCutoutOffset(
    fittedCutout,
    width: width,
    height: height,
    offsetX: (cutoutSettings['offsetX'] as num).toDouble(),
    offsetY: (cutoutSettings['offsetY'] as num).toDouble(),
  );

  final outline = _buildOutlineLayer(
    fittedCutout,
    settings['outline'] as Map<String, dynamic>,
  );
  if (outline != null) {
    _compositeCentered(result, outline, fittedCutout, offset);
  }

  final glow = _buildGlowLayer(
    fittedCutout,
    settings['glow'] as Map<String, dynamic>,
  );
  if (glow != null) {
    _compositeCentered(result, glow, fittedCutout, offset);
  }

  final shadow = _buildShadowLayer(
    fittedCutout,
    settings['shadow'] as Map<String, dynamic>,
  );
  if (shadow != null) {
    _compositeCentered(result, shadow, fittedCutout, offset);
  }

  img.compositeImage(result, fittedCutout, dstX: offset.x, dstY: offset.y);

  final shaped = _applyFrameShape(result, frameShape);
  final bytes = img.encodeJpg(shaped, quality: quality);

  return {
    'bytes': Uint8List.fromList(bytes),
    'width': width,
    'height': height,
  };
}

img.Image _createBackground(
  int width,
  int height,
  Map<String, dynamic> background,
  Uint8List? backgroundBytes,
) {
  final type = background['type'] as String;

  if (type == 'image' && backgroundBytes != null) {
    final decoded = img.decodeImage(backgroundBytes);
    if (decoded != null) {
      return _resizeCover(decoded, width: width, height: height);
    }
  }

  final bg = img.Image(width: width, height: height, numChannels: 4);

  if (type == 'solid') {
    final color = background['color'] as int;
    final rgb = _colorFromValue(color);
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        bg.setPixel(x, y, rgb);
      }
    }
    return bg;
  }

  if (type == 'gradient') {
    final colorA = _colorFromValue(background['colorA'] as int);
    final colorB = _colorFromValue(background['colorB'] as int);
    final direction = background['direction'] as int;

    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final t = _gradientT(
          x: x,
          y: y,
          width: width,
          height: height,
          direction: direction,
        );
        final r = (colorA.r + (colorB.r - colorA.r) * t).round().clamp(0, 255);
        final g = (colorA.g + (colorB.g - colorA.g) * t).round().clamp(0, 255);
        final b = (colorA.b + (colorB.b - colorA.b) * t).round().clamp(0, 255);
        bg.setPixel(x, y, img.ColorRgb8(r, g, b));
      }
    }
    return bg;
  }

  final fallback = img.ColorRgb8(18, 26, 40);
  for (var y = 0; y < height; y++) {
    for (var x = 0; x < width; x++) {
      bg.setPixel(x, y, fallback);
    }
  }
  return bg;
}

img.Image _applyEnhancement(img.Image image, Map<String, dynamic> enhance) {
  var result = image;
  final brightness = (enhance['brightness'] as num).toDouble();
  final contrast = (enhance['contrast'] as num).toDouble();
  final saturation = (enhance['saturation'] as num).toDouble();

  if (brightness != 0 || contrast != 0 || saturation != 0) {
    result = img.adjustColor(
      result,
      brightness: brightness * 40,
      contrast: contrast * 40,
      saturation: saturation * 40,
    );
  }

  return result;
}

img.Image _buildCutout(
  img.Image source,
  Map<String, dynamic>? maskData,
  Map<String, dynamic>? maskEdits,
) {
  if (maskData == null) {
    return source.clone();
  }

  final width = maskData['width'] as int;
  final height = maskData['height'] as int;
  final confidence = (maskData['confidence'] as TransferableTypedData)
      .materialize()
      .asUint8List();

  final edits = maskEdits == null
      ? null
      : (maskEdits['alpha'] as TransferableTypedData)
          .materialize()
          .asUint8List();

  final scaleX = width / source.width;
  final scaleY = height / source.height;
  final result = img.Image(width: source.width, height: source.height, numChannels: 4);

  for (var y = 0; y < source.height; y++) {
    for (var x = 0; x < source.width; x++) {
      final maskX = (x * scaleX).round().clamp(0, width - 1);
      final maskY = (y * scaleY).round().clamp(0, height - 1);
      final maskIndex = maskY * width + maskX;

      final baseConfidence = confidence[maskIndex];
      final editAlpha = edits == null ? 255 : edits[maskIndex];
  final combined =
      (baseConfidence * editAlpha / 255).round().clamp(0, 255).toInt();

      if (combined == 0) {
        result.setPixel(x, y, img.ColorRgba8(0, 0, 0, 0));
        continue;
      }

      final pixel = source.getPixel(x, y);
      result.setPixel(
        x,
        y,
        img.ColorRgba8(
          pixel.r.toInt(),
          pixel.g.toInt(),
          pixel.b.toInt(),
          combined,
        ),
      );
    }
  }

  return result;
}

img.Image _fitCutoutToCanvas(
  img.Image cutout, {
  required int width,
  required int height,
  required int frameShape,
  required double scale,
}) {
  final safeScale = _safeScaleForShape(frameShape);
  final targetWidth = (width * safeScale).round();
  final targetHeight = (height * safeScale).round();
  final scaledWidth = (targetWidth * scale.clamp(0.5, 2.0)).round();
  final scaledHeight = (targetHeight * scale.clamp(0.5, 2.0)).round();

  return img.copyResize(
    cutout,
    width: scaledWidth,
    height: scaledHeight,
    maintainAspect: true,
    interpolation: img.Interpolation.cubic,
  );
}

_Point _resolveCutoutOffset(
  img.Image cutout, {
  required int width,
  required int height,
  required double offsetX,
  required double offsetY,
}) {
  final dx = (offsetX.clamp(-0.35, 0.35) * width).round();
  final dy = (offsetY.clamp(-0.35, 0.35) * height).round();

  final offsetXPixel = (width - cutout.width) ~/ 2 + dx;
  final offsetYPixel = (height - cutout.height) ~/ 2 + dy;

  return _Point(offsetXPixel, offsetYPixel);
}

img.Image? _buildOutlineLayer(
  img.Image cutout,
  Map<String, dynamic> outline,
) {
  if (!(outline['enabled'] as bool)) return null;

  final thickness = (outline['thickness'] as num).toDouble();
  if (thickness <= 0) return null;

  final color = _colorFromValue(outline['color'] as int);
  final outlineWidth = (cutout.width + thickness * 2).round();
  final outlineHeight = (cutout.height + thickness * 2).round();

  final mask = _tintAlpha(
    img.copyResize(
      cutout,
      width: outlineWidth,
      height: outlineHeight,
      maintainAspect: true,
      interpolation: img.Interpolation.cubic,
    ),
    color,
    opacity: 1,
  );

  final blur = (outline['blur'] as num).toDouble();
  if (blur > 0) {
    return img.gaussianBlur(mask, radius: blur.clamp(0, 12).toInt());
  }

  return mask;
}

img.Image? _buildGlowLayer(
  img.Image cutout,
  Map<String, dynamic> glow,
) {
  if (!(glow['enabled'] as bool)) return null;

  final spread = (glow['spread'] as num).toDouble();
  final intensity =
      (glow['intensity'] as num).toDouble().clamp(0, 1).toDouble();
  if (spread <= 0 || intensity <= 0) return null;

  final color = _colorFromValue(glow['color'] as int);
  final glowWidth = (cutout.width + spread * 2).round();
  final glowHeight = (cutout.height + spread * 2).round();

  var mask = _tintAlpha(
    img.copyResize(
      cutout,
      width: glowWidth,
      height: glowHeight,
      maintainAspect: true,
      interpolation: img.Interpolation.cubic,
    ),
    color,
    opacity: intensity,
  );

  mask = img.gaussianBlur(mask, radius: spread.clamp(2, 24).toInt());
  return mask;
}

img.Image? _buildShadowLayer(
  img.Image cutout,
  Map<String, dynamic> shadow,
) {
  if (!(shadow['enabled'] as bool)) return null;

  final opacity = (shadow['opacity'] as num).toDouble().clamp(0, 1);
  final blur = (shadow['blur'] as num).toDouble();
  final offset = (shadow['offset'] as num).toDouble();

  if (opacity <= 0) return null;

  final shadowColor = img.ColorRgba8(0, 0, 0, (opacity * 255).round());
  var mask = _tintAlpha(cutout, shadowColor, opacity: 1);

  if (blur > 0) {
    mask = img.gaussianBlur(mask, radius: blur.clamp(2, 24).toInt());
  }

  final pad = offset.abs().round();
  final padded = img.Image(
    width: mask.width + pad * 2,
    height: mask.height + pad * 2,
    numChannels: 4,
  );
  final dstX = pad + offset.round();
  final dstY = pad + offset.round();
  img.compositeImage(
    padded,
    mask,
    dstX: dstX,
    dstY: dstY,
  );

  return padded;
}

img.Image _applyFrameShape(img.Image image, int frameShape) {
  final shape = FrameShape.values[frameShape];
  switch (shape) {
    case FrameShape.circle:
      return _applyCircleMask(image);
    case FrameShape.roundedSquare:
      return _applyRoundedMask(image, 42);
    case FrameShape.square:
      return image;
  }
}

img.Image _applyCircleMask(img.Image image) {
  final result = image.clone();
  final centerX = image.width / 2;
  final centerY = image.height / 2;
  final radius = math.min(centerX, centerY);

  for (var y = 0; y < image.height; y++) {
    for (var x = 0; x < image.width; x++) {
      final dx = x - centerX;
      final dy = y - centerY;
      final distance = math.sqrt(dx * dx + dy * dy);
      if (distance > radius) {
        final pixel = image.getPixel(x, y);
        result.setPixel(
          x,
          y,
          img.ColorRgba8(
            pixel.r.toInt(),
            pixel.g.toInt(),
            pixel.b.toInt(),
            0,
          ),
        );
      }
    }
  }

  return result;
}

img.Image _applyRoundedMask(img.Image image, int cornerRadius) {
  final result = image.clone();
  final radius = cornerRadius.toDouble();

  for (var y = 0; y < image.height; y++) {
    for (var x = 0; x < image.width; x++) {
      final withinLeft = x < radius;
      final withinRight = x > image.width - radius;
      final withinTop = y < radius;
      final withinBottom = y > image.height - radius;

      if ((withinLeft && withinTop) || (withinRight && withinTop)) {
        final dx = withinLeft ? radius - x : x - (image.width - radius);
        final dy = radius - y;
        if (math.sqrt(dx * dx + dy * dy) > radius) {
          final pixel = image.getPixel(x, y);
          result.setPixel(
            x,
            y,
            img.ColorRgba8(
              pixel.r.toInt(),
              pixel.g.toInt(),
              pixel.b.toInt(),
              0,
            ),
          );
        }
      } else if ((withinLeft && withinBottom) || (withinRight && withinBottom)) {
        final dx = withinLeft ? radius - x : x - (image.width - radius);
        final dy = y - (image.height - radius);
        if (math.sqrt(dx * dx + dy * dy) > radius) {
          final pixel = image.getPixel(x, y);
          result.setPixel(
            x,
            y,
            img.ColorRgba8(
              pixel.r.toInt(),
              pixel.g.toInt(),
              pixel.b.toInt(),
              0,
            ),
          );
        }
      }
    }
  }

  return result;
}

img.Image _resizeCover(img.Image source, {required int width, required int height}) {
  final scale = math.max(width / source.width, height / source.height);
  final scaledWidth = (source.width * scale).round();
  final scaledHeight = (source.height * scale).round();

  final resized = img.copyResize(
    source,
    width: scaledWidth,
    height: scaledHeight,
    interpolation: img.Interpolation.cubic,
  );

  final offsetX = ((scaledWidth - width) / 2).round();
  final offsetY = ((scaledHeight - height) / 2).round();

  return img.copyCrop(resized, x: offsetX, y: offsetY, width: width, height: height);
}

img.ColorRgb8 _colorFromValue(int value) {
  return img.ColorRgb8(
    (value >> 16) & 0xFF,
    (value >> 8) & 0xFF,
    value & 0xFF,
  );
}

double _gradientT({
  required int x,
  required int y,
  required int width,
  required int height,
  required int direction,
}) {
  switch (GradientDirection.values[direction]) {
    case GradientDirection.topBottom:
      return y / height;
    case GradientDirection.bottomTop:
      return 1 - (y / height);
    case GradientDirection.leftRight:
      return x / width;
    case GradientDirection.rightLeft:
      return 1 - (x / width);
    case GradientDirection.topLeftBottomRight:
      return (x + y) / (width + height);
    case GradientDirection.topRightBottomLeft:
      return (width - x + y) / (width + height);
  }
}

double _safeScaleForShape(int frameShape) {
  switch (FrameShape.values[frameShape]) {
    case FrameShape.circle:
      return 0.78;
    case FrameShape.roundedSquare:
      return 0.86;
    case FrameShape.square:
      return 0.9;
  }
}

img.Image _tintAlpha(img.Image source, img.Color color, {required double opacity}) {
  final result = img.Image(width: source.width, height: source.height, numChannels: 4);
  final alphaScale = opacity.clamp(0.0, 1.0).toDouble();

  for (var y = 0; y < source.height; y++) {
    for (var x = 0; x < source.width; x++) {
      final pixel = source.getPixel(x, y);
      final alpha = (pixel.a * alphaScale).round().clamp(0, 255).toInt();
      if (alpha == 0) {
        result.setPixel(x, y, img.ColorRgba8(0, 0, 0, 0));
        continue;
      }
      result.setPixel(
        x,
        y,
        img.ColorRgba8(
          color.r.toInt(),
          color.g.toInt(),
          color.b.toInt(),
          alpha,
        ),
      );
    }
  }

  return result;
}

void _compositeCentered(
  img.Image canvas,
  img.Image layer,
  img.Image cutout,
  _Point offset,
) {
  final dx = ((layer.width - cutout.width) / 2).round();
  final dy = ((layer.height - cutout.height) / 2).round();
  img.compositeImage(
    canvas,
    layer,
    dstX: offset.x - dx,
    dstY: offset.y - dy,
  );
}

class _Point {
  final int x;
  final int y;

  const _Point(this.x, this.y);
}

class _Size {
  final int width;
  final int height;

  const _Size(this.width, this.height);
}
