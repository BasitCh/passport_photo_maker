import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/core/error/failures.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/generate_preview_usecase.dart';
import 'package:passport_photo_maker/features/editor/domain/repositories/image_repository.dart';
import '../../../../helpers/mocks.dart';
import '../../../../helpers/test_data.dart';

void main() {
  late GeneratePreviewUseCase useCase;
  late MockImageRepository mockRepository;

  setUpAll(() {
    // Register fallback values for mocktail
    registerFallbackValue(TestData.imageBytes);
    registerFallbackValue(TestData.defaultMaskData());
    registerFallbackValue(TestData.defaultMaskEdits());
    registerFallbackValue(TestData.defaultSettings());
    registerFallbackValue(ExportPreset.linkedIn);
  });

  setUp(() {
    mockRepository = MockImageRepository();
    useCase = GeneratePreviewUseCase(mockRepository);
  });

  group('GeneratePreviewUseCase', () {
    final params = GeneratePreviewParams(
      sourceBytes: TestData.imageBytes,
      maskData: TestData.defaultMaskData(),
      maskEdits: TestData.defaultMaskEdits(),
      settings: TestData.defaultSettings(),
      preset: ExportPreset.linkedIn,
    );

    final processedImage = TestData.defaultProcessedImage();

    test('should return ProcessedImage when preview generation succeeds',
        () async {
      // Arrange
      when(() => mockRepository.generatePreview(
            sourceBytes: any(named: 'sourceBytes'),
            maskData: any(named: 'maskData'),
            maskEdits: any(named: 'maskEdits'),
            settings: any(named: 'settings'),
            preset: any(named: 'preset'),
          )).thenAnswer((_) async => Right(processedImage));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, Right(processedImage));
      verify(() => mockRepository.generatePreview(
            sourceBytes: TestData.imageBytes,
            maskData: params.maskData,
            maskEdits: params.maskEdits,
            settings: params.settings,
            preset: ExportPreset.linkedIn,
          )).called(1);
    });

    test('should return ProcessingFailed when repository fails', () async {
      // Arrange
      const failure = Failure.processingFailed(
        message: 'Failed to generate preview',
      );
      when(() => mockRepository.generatePreview(
            sourceBytes: any(named: 'sourceBytes'),
            maskData: any(named: 'maskData'),
            maskEdits: any(named: 'maskEdits'),
            settings: any(named: 'settings'),
            preset: any(named: 'preset'),
          )).thenAnswer((_) async => const Left(failure));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Left(failure));
    });

    test('should work with null maskData and maskEdits', () async {
      // Arrange
      final paramsWithNullMask = GeneratePreviewParams(
        sourceBytes: TestData.imageBytes,
        maskData: null,
        maskEdits: null,
        settings: TestData.defaultSettings(),
        preset: ExportPreset.linkedIn,
      );

      when(() => mockRepository.generatePreview(
            sourceBytes: any(named: 'sourceBytes'),
            maskData: any(named: 'maskData'),
            maskEdits: any(named: 'maskEdits'),
            settings: any(named: 'settings'),
            preset: any(named: 'preset'),
          )).thenAnswer((_) async => Right(processedImage));

      // Act
      final result = await useCase(paramsWithNullMask);

      // Assert
      expect(result, Right(processedImage));
      verify(() => mockRepository.generatePreview(
            sourceBytes: TestData.imageBytes,
            maskData: null,
            maskEdits: null,
            settings: paramsWithNullMask.settings,
            preset: ExportPreset.linkedIn,
          )).called(1);
    });
  });
}
