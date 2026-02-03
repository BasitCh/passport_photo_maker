import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/mask_data.dart';
import '../entities/processed_image.dart';
import '../entities/editor_settings.dart';

/// Repository interface for image operations (Domain layer)
/// Implementation will be in Data layer
abstract class ImageRepository {
  /// Pick an image from gallery or camera
  Future<Either<Failure, String>> pickImage({bool fromCamera = false});

  /// Segment person from background using ML Kit
  Future<Either<Failure, MaskData>> segmentPerson(Uint8List imageBytes);

  /// Generate preview with current settings
  Future<Either<Failure, ProcessedImage>> generatePreview({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
  });

  /// Build final export image
  Future<Either<Failure, ProcessedImage>> buildExport({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
    required ExportQuality quality,
  });
}

/// Export presets
enum ExportPreset {
  linkedIn(id: 'linkedin', label: 'LinkedIn DP', width: 800, height: 800),
  cvPhoto(id: 'cv', label: 'CV Photo', width: 600, height: 900),
  passport(id: 'passport', label: 'Passport', width: 600, height: 600),
  whatsapp(id: 'whatsapp', label: 'WhatsApp DP', width: 640, height: 640);

  const ExportPreset({
    required this.id,
    required this.label,
    required this.width,
    required this.height,
  });

  final String id;
  final String label;
  final int width;
  final int height;
}

enum ExportQuality {
  standard,
  high,
  hd,
}
