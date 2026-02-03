import 'dart:typed_data';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../editor/domain/entities/editor_settings.dart';
import '../../../editor/domain/entities/mask_data.dart';
import '../../../editor/domain/entities/processed_image.dart';
import '../../../editor/domain/repositories/image_repository.dart';
import '../../domain/repositories/storage_repository.dart';

/// Use case for exporting and saving image
@injectable
class ExportImageUseCase implements UseCase<File, ExportImageParams> {
  final ImageRepository imageRepository;
  final StorageRepository storageRepository;

  ExportImageUseCase(this.imageRepository, this.storageRepository);

  @override
  Future<Either<Failure, File>> call(ExportImageParams params) async {
    // Build export image
    final buildResult = await imageRepository.buildExport(
      sourceBytes: params.sourceBytes,
      maskData: params.maskData,
      maskEdits: params.maskEdits,
      settings: params.settings,
      preset: params.preset,
      quality: params.quality,
    );

    return buildResult.fold(
      (failure) => Left(failure),
      (processedImage) async {
        // Save to storage
        final extension =
            processedImage.format == ImageFormat.png ? 'png' : 'jpg';
        return await storageRepository.saveImage(
          bytes: processedImage.bytes,
          presetId: params.preset.id,
          extension: extension,
        );
      },
    );
  }
}

class ExportImageParams extends Equatable {
  final Uint8List sourceBytes;
  final MaskData? maskData;
  final MaskEdits? maskEdits;
  final EditorSettings settings;
  final ExportPreset preset;
  final ExportQuality quality;

  const ExportImageParams({
    required this.sourceBytes,
    required this.maskData,
    required this.maskEdits,
    required this.settings,
    required this.preset,
    required this.quality,
  });

  @override
  List<Object?> get props =>
      [sourceBytes, maskData, maskEdits, settings, preset, quality];
}
