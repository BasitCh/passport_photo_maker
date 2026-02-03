import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/entities/processed_image.dart';
import '../../domain/repositories/image_repository.dart';

/// Use case for generating preview image
@injectable
class GeneratePreviewUseCase
    implements UseCase<ProcessedImage, GeneratePreviewParams> {
  final ImageRepository repository;

  GeneratePreviewUseCase(this.repository);

  @override
  Future<Either<Failure, ProcessedImage>> call(
      GeneratePreviewParams params) async {
    return await repository.generatePreview(
      sourceBytes: params.sourceBytes,
      maskData: params.maskData,
      maskEdits: params.maskEdits,
      settings: params.settings,
      preset: params.preset,
    );
  }
}

class GeneratePreviewParams extends Equatable {
  final Uint8List sourceBytes;
  final MaskData? maskData;
  final MaskEdits? maskEdits;
  final EditorSettings settings;
  final ExportPreset preset;

  const GeneratePreviewParams({
    required this.sourceBytes,
    required this.maskData,
    required this.maskEdits,
    required this.settings,
    required this.preset,
  });

  @override
  List<Object?> get props =>
      [sourceBytes, maskData, maskEdits, settings, preset];
}
