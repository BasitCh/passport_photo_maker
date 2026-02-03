import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/core/error/failures.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/segment_person_usecase.dart';
import '../../../../helpers/mocks.dart';
import '../../../../helpers/test_data.dart';

void main() {
  late SegmentPersonUseCase useCase;
  late MockImageRepository mockRepository;

  setUpAll(() {
    // Register fallback values for mocktail
    registerFallbackValue(TestData.imageBytes);
  });

  setUp(() {
    mockRepository = MockImageRepository();
    useCase = SegmentPersonUseCase(mockRepository);
  });

  group('SegmentPersonUseCase', () {
    final params = SegmentPersonParams(TestData.imageBytes);
    final maskData = TestData.defaultMaskData();

    test('should return MaskData when segmentation succeeds', () async {
      // Arrange
      when(() => mockRepository.segmentPerson(any()))
          .thenAnswer((_) async => Right(maskData));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, Right(maskData));
      verify(() => mockRepository.segmentPerson(TestData.imageBytes)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return SegmentationFailed when repository fails', () async {
      // Arrange
      const failure = Failure.segmentationFailed(
        message: 'Failed to segment person',
      );
      when(() => mockRepository.segmentPerson(any()))
          .thenAnswer((_) async => const Left(failure));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Left(failure));
      verify(() => mockRepository.segmentPerson(TestData.imageBytes)).called(1);
    });

    test('should pass image bytes to repository', () async {
      // Arrange
      when(() => mockRepository.segmentPerson(any()))
          .thenAnswer((_) async => Right(maskData));

      // Act
      await useCase(params);

      // Assert
      final captured = verify(
        () => mockRepository.segmentPerson(captureAny()),
      ).captured;
      expect(captured.first, TestData.imageBytes);
    });
  });
}
