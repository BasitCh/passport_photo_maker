import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/entities/processed_image.dart';
import '../../domain/repositories/image_repository.dart';
import '../datasources/image_processing_datasource.dart';
import '../datasources/ml_kit_datasource.dart';

/// Implementation of ImageRepository (Data layer)
@LazySingleton(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final MlKitDataSource mlKitDataSource;
  final ImageProcessingDataSource imageProcessingDataSource;
  final ImagePicker imagePicker;

  ImageRepositoryImpl({
    required this.mlKitDataSource,
    required this.imageProcessingDataSource,
    required this.imagePicker,
  });

  @override
  Future<Either<Failure, String>> pickImage({bool fromCamera = false}) async {
    try {
      final source = fromCamera ? ImageSource.camera : ImageSource.gallery;
      final XFile? file = await imagePicker.pickImage(source: source);

      if (file == null) {
        return const Left(Failure.loadFailed(
          message: 'No image selected',
        ));
      }

      return Right(file.path);
    } catch (e) {
      return Left(Failure.loadFailed(
        message: 'Failed to pick image',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, MaskData>> segmentPerson(Uint8List imageBytes) async {
    try {
      final maskData = await mlKitDataSource.segmentPerson(imageBytes);
      return Right(maskData);
    } catch (e) {
      return Left(Failure.segmentationFailed(
        message: 'Failed to segment person from background',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, ProcessedImage>> generatePreview({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
  }) async {
    try {
      final processedImage = await imageProcessingDataSource.generatePreview(
        sourceBytes: sourceBytes,
        maskData: maskData,
        maskEdits: maskEdits,
        settings: settings,
        preset: preset,
      );
      return Right(processedImage);
    } catch (e) {
      return Left(Failure.processingFailed(
        message: 'Failed to generate preview',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, ProcessedImage>> buildExport({
    required Uint8List sourceBytes,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required EditorSettings settings,
    required ExportPreset preset,
    required ExportQuality quality,
  }) async {
    try {
      final processedImage = await imageProcessingDataSource.buildExport(
        sourceBytes: sourceBytes,
        maskData: maskData,
        maskEdits: maskEdits,
        settings: settings,
        preset: preset,
        quality: quality,
      );
      return Right(processedImage);
    } catch (e) {
      return Left(Failure.exportFailed(
        message: 'Failed to build export image',
        debugDetails: e.toString(),
      ));
    }
  }
}
