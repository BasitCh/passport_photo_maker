import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/core/error/failures.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/pick_image_usecase.dart';
import '../../../../helpers/mocks.dart';
import '../../../../helpers/test_data.dart';

void main() {
  late PickImageUseCase useCase;
  late MockImageRepository mockRepository;

  setUp(() {
    mockRepository = MockImageRepository();
    useCase = PickImageUseCase(mockRepository);
  });

  group('PickImageUseCase', () {
    const params = PickImageParams(fromCamera: false);

    test('should return image path when repository succeeds', () async {
      // Arrange
      when(() => mockRepository.pickImage(fromCamera: false))
          .thenAnswer((_) async => const Right(TestData.imagePath));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Right(TestData.imagePath));
      verify(() => mockRepository.pickImage(fromCamera: false)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return LoadFailed when repository fails', () async {
      // Arrange
      const failure = Failure.loadFailed(message: 'No image selected');
      when(() => mockRepository.pickImage(fromCamera: false))
          .thenAnswer((_) async => const Left(failure));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Left(failure));
      verify(() => mockRepository.pickImage(fromCamera: false)).called(1);
    });

    test('should pass fromCamera parameter correctly', () async {
      // Arrange
      const paramsWithCamera = PickImageParams(fromCamera: true);
      when(() => mockRepository.pickImage(fromCamera: true))
          .thenAnswer((_) async => const Right(TestData.imagePath));

      // Act
      await useCase(paramsWithCamera);

      // Assert
      verify(() => mockRepository.pickImage(fromCamera: true)).called(1);
    });
  });
}
