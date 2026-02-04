import 'dart:typed_data';
import 'package:passport_photo_maker/features/editor/domain/entities/editor_settings.dart';
import 'package:passport_photo_maker/features/editor/domain/entities/mask_data.dart';
import 'package:passport_photo_maker/features/editor/domain/entities/processed_image.dart';
import 'package:flutter/painting.dart';

/// Test data factory for consistent test data across tests
class TestData {
  // Sample image bytes (1x1 transparent PNG)
  static final Uint8List imageBytes = Uint8List.fromList([
    0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, 0x00, 0x00, 0x00, 0x0D,
    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x08, 0x06, 0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4, 0x89, 0x00, 0x00, 0x00,
    0x0A, 0x49, 0x44, 0x41, 0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00,
    0x05, 0x00, 0x01, 0x0D, 0x0A, 0x2D, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x49,
    0x45, 0x4E, 0x44, 0xAE, 0x42, 0x60, 0x82,
  ]);

  static const String imagePath = '/test/path/image.jpg';

  static EditorSettings defaultSettings() => EditorSettings(
        background: const BackgroundStyle.solid(
          id: 'solid_white',
          label: 'White',
          color: Color(0xFFFFFFFF),
        ),
        frameShape: FrameShape.square,
        cutout: const CutoutSettings(),
        outline: const OutlineSettings(),
        glow: const GlowSettings(),
        shadow: const ShadowSettings(),
        enhance: const EnhanceSettings(),
      );

  static MaskData defaultMaskData() => MaskData(
        width: 100,
        height: 100,
        confidenceMap: Uint8List.fromList(
          List<int>.filled(10000, 255),
        ),
      );

  static MaskEdits defaultMaskEdits() => MaskEdits(
        width: 100,
        height: 100,
        alphaMap: Uint8List.fromList(
          List<int>.filled(10000, 255),
        ),
      );

  static ProcessedImage defaultProcessedImage() => ProcessedImage(
        bytes: imageBytes,
        width: 800,
        height: 800,
        format: ImageFormat.jpg,
      );
}
