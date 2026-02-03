import 'dart:io';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/core/error/failures.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/pick_image_usecase.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/segment_person_usecase.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/generate_preview_usecase.dart';
import 'package:passport_photo_maker/features/editor/domain/entities/editor_settings.dart';
import 'package:passport_photo_maker/features/editor/domain/repositories/image_repository.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_bloc.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_event.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_state.dart';
import 'package:passport_photo_maker/features/export/application/usecases/export_image_usecase.dart';
import '../../../../helpers/mocks.dart';
import '../../../../helpers/test_data.dart';

void main() {
  late EditorBloc bloc;
  late MockPickImageUseCase mockPickImageUseCase;
  late MockSegmentPersonUseCase mockSegmentPersonUseCase;
  late MockGeneratePreviewUseCase mockGeneratePreviewUseCase;
  late MockExportImageUseCase mockExportImageUseCase;

  setUp(() {
    mockPickImageUseCase = MockPickImageUseCase();
    mockSegmentPersonUseCase = MockSegmentPersonUseCase();
    mockGeneratePreviewUseCase = MockGeneratePreviewUseCase();
    mockExportImageUseCase = MockExportImageUseCase();

    bloc = EditorBloc(
      pickImageUseCase: mockPickImageUseCase,
      segmentPersonUseCase: mockSegmentPersonUseCase,
      generatePreviewUseCase: mockGeneratePreviewUseCase,
      exportImageUseCase: mockExportImageUseCase,
    );

    // Register fallback values for mocktail
    registerFallbackValue(const PickImageParams());
    registerFallbackValue(SegmentPersonParams(TestData.imageBytes));
    registerFallbackValue(GeneratePreviewParams(
      sourceBytes: TestData.imageBytes,
      maskData: null,
      maskEdits: null,
      settings: TestData.defaultSettings(),
      preset: ExportPreset.linkedIn,
    ));
    registerFallbackValue(ExportImageParams(
      sourceBytes: TestData.imageBytes,
      maskData: null,
      maskEdits: null,
      settings: TestData.defaultSettings(),
      preset: ExportPreset.linkedIn,
      quality: ExportQuality.high,
    ));
  });

  tearDown(() {
    bloc.close();
  });

  group('EditorBloc', () {
    test('initial state is EditorInitial', () {
      expect(bloc.state, const EditorState.initial());
    });

    group('PickImage', () {
      blocTest<EditorBloc, EditorState>(
        'emits [loading, imageLoaded] when image picked successfully',
        build: () {
          when(() => mockPickImageUseCase(any()))
              .thenAnswer((_) async => const Right(TestData.imagePath));
          return bloc;
        },
        act: (bloc) => bloc.add(const EditorEvent.pickImage(fromCamera: false)),
        expect: () => [
          const EditorState.loading(message: 'Picking image...'),
          const EditorState.loading(message: 'Loading image...'),
          isA<ImageLoaded>(),
        ],
      );

      blocTest<EditorBloc, EditorState>(
        'emits [loading, error] when image picking fails',
        build: () {
          when(() => mockPickImageUseCase(any())).thenAnswer(
            (_) async => const Left(
              Failure.loadFailed(message: 'No image selected'),
            ),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const EditorEvent.pickImage(fromCamera: false)),
        expect: () => [
          const EditorState.loading(message: 'Picking image...'),
          const EditorState.error(
            failure: Failure.loadFailed(message: 'No image selected'),
          ),
        ],
      );
    });

    group('SegmentPerson', () {
      blocTest<EditorBloc, EditorState>(
        'emits [processing, imageLoaded] when segmentation succeeds',
        build: () {
          when(() => mockSegmentPersonUseCase(any()))
              .thenAnswer((_) async => Right(TestData.defaultMaskData()));
          when(() => mockGeneratePreviewUseCase(any()))
              .thenAnswer((_) async => Right(TestData.defaultProcessedImage()));
          return bloc;
        },
        seed: () => EditorState.imageLoaded(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
        ),
        act: (bloc) => bloc.add(const EditorEvent.segmentPerson()),
        expect: () => [
          isA<EditorProcessing>(),
          isA<ImageLoaded>(),
          isA<EditorProcessing>(),
          isA<PreviewReady>(),
        ],
      );

      blocTest<EditorBloc, EditorState>(
        'emits [processing, error] when segmentation fails',
        build: () {
          when(() => mockSegmentPersonUseCase(any())).thenAnswer(
            (_) async => const Left(
              Failure.segmentationFailed(message: 'Segmentation failed'),
            ),
          );
          return bloc;
        },
        seed: () => EditorState.imageLoaded(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
        ),
        act: (bloc) => bloc.add(const EditorEvent.segmentPerson()),
        expect: () => [
          isA<EditorProcessing>(),
          isA<EditorError>().having(
            (s) => s.failure,
            'failure',
            const Failure.segmentationFailed(message: 'Segmentation failed'),
          ),
        ],
      );
    });

    group('GeneratePreview', () {
      blocTest<EditorBloc, EditorState>(
        'emits [processing, previewReady] when preview generation succeeds',
        build: () {
          when(() => mockGeneratePreviewUseCase(any()))
              .thenAnswer((_) async => Right(TestData.defaultProcessedImage()));
          return bloc;
        },
        seed: () => EditorState.imageLoaded(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          maskData: TestData.defaultMaskData(),
          maskEdits: TestData.defaultMaskEdits(),
        ),
        act: (bloc) => bloc.add(const EditorEvent.generatePreview()),
        expect: () => [
          isA<EditorProcessing>().having(
            (s) => s.message,
            'message',
            'Generating preview...',
          ),
          isA<PreviewReady>(),
        ],
      );

      blocTest<EditorBloc, EditorState>(
        'emits [processing, error] when preview generation fails',
        build: () {
          when(() => mockGeneratePreviewUseCase(any())).thenAnswer(
            (_) async => const Left(
              Failure.processingFailed(message: 'Processing failed'),
            ),
          );
          return bloc;
        },
        seed: () => EditorState.imageLoaded(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
        ),
        act: (bloc) => bloc.add(const EditorEvent.generatePreview()),
        expect: () => [
          isA<EditorProcessing>(),
          isA<EditorError>(),
        ],
      );
    });

    group('ExportImage', () {
      final mockFile = File('/test/export/image.jpg');

      blocTest<EditorBloc, EditorState>(
        'emits [processing, exportSuccess] when export succeeds',
        build: () {
          when(() => mockExportImageUseCase(any()))
              .thenAnswer((_) async => Right(mockFile));
          when(() => mockFile.length()).thenAnswer((_) async => 1024);
          return bloc;
        },
        seed: () => EditorState.previewReady(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          maskData: TestData.defaultMaskData(),
          maskEdits: TestData.defaultMaskEdits(),
          preview: TestData.defaultProcessedImage(),
        ),
        act: (bloc) => bloc.add(
          const EditorEvent.exportImage(
            preset: ExportPreset.linkedIn,
            quality: ExportQuality.high,
          ),
        ),
        expect: () => [
          isA<EditorProcessing>().having(
            (s) => s.message,
            'message',
            'Exporting image...',
          ),
          isA<ExportSuccess>().having(
            (s) => s.filePath,
            'filePath',
            '/test/export/image.jpg',
          ),
        ],
      );

      blocTest<EditorBloc, EditorState>(
        'emits [processing, error] when export fails',
        build: () {
          when(() => mockExportImageUseCase(any())).thenAnswer(
            (_) async => const Left(
              Failure.exportFailed(message: 'Export failed'),
            ),
          );
          return bloc;
        },
        seed: () => EditorState.previewReady(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          maskData: TestData.defaultMaskData(),
          maskEdits: TestData.defaultMaskEdits(),
          preview: TestData.defaultProcessedImage(),
        ),
        act: (bloc) => bloc.add(
          const EditorEvent.exportImage(
            preset: ExportPreset.linkedIn,
            quality: ExportQuality.high,
          ),
        ),
        expect: () => [
          isA<EditorProcessing>(),
          isA<EditorError>(),
        ],
      );
    });

    group('UpdateBackground', () {
      const newBackground = BackgroundStyle.solid(
        id: 'solid_blue',
        label: 'Blue',
        color: Color(0xFF0000FF),
      );

      blocTest<EditorBloc, EditorState>(
        'updates settings and triggers preview regeneration',
        build: () {
          when(() => mockGeneratePreviewUseCase(any()))
              .thenAnswer((_) async => Right(TestData.defaultProcessedImage()));
          return bloc;
        },
        seed: () => EditorState.imageLoaded(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
        ),
        act: (bloc) => bloc.add(const EditorEvent.updateBackground(newBackground)),
        expect: () => [
          isA<ImageLoaded>().having(
            (s) => s.settings.background,
            'background',
            newBackground,
          ),
          isA<EditorProcessing>(),
          isA<PreviewReady>(),
        ],
      );
    });
  });
}
