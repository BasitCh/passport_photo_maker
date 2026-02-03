import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../application/usecases/generate_preview_usecase.dart';
import '../../application/usecases/pick_image_usecase.dart';
import '../../application/usecases/segment_person_usecase.dart';
import '../../../export/application/usecases/export_image_usecase.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/repositories/image_repository.dart';
import 'editor_event.dart';
import 'editor_state.dart';

/// BLoC for editor feature (Presentation layer)
/// Handles all editor-related business logic orchestration
@injectable
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  final PickImageUseCase pickImageUseCase;
  final SegmentPersonUseCase segmentPersonUseCase;
  final GeneratePreviewUseCase generatePreviewUseCase;
  final ExportImageUseCase exportImageUseCase;

  EditorBloc({
    required this.pickImageUseCase,
    required this.segmentPersonUseCase,
    required this.generatePreviewUseCase,
    required this.exportImageUseCase,
  }) : super(const EditorState.initial()) {
    on<LoadImage>(_onLoadImage);
    on<PickImage>(_onPickImage);
    on<SegmentPerson>(_onSegmentPerson);
    on<UpdateSettings>(_onUpdateSettings);
    on<UpdateBackground>(_onUpdateBackground);
    on<UpdateFrameShape>(_onUpdateFrameShape);
    on<GeneratePreview>(_onGeneratePreview);
    on<ExportImage>(_onExportImage);
    on<ApplyBrushStroke>(_onApplyBrushStroke);
  }

  Future<void> _onLoadImage(
    LoadImage event,
    Emitter<EditorState> emit,
  ) async {
    emit(const EditorState.loading(message: 'Loading image...'));

    try {
      final file = File(event.imagePath);
      final bytes = await file.readAsBytes();

      emit(EditorState.imageLoaded(
        imagePath: event.imagePath,
        imageBytes: bytes,
        settings: EditorSettings.initial(),
      ));

      // Automatically trigger segmentation
      add(const EditorEvent.segmentPerson());
    } catch (e) {
      emit(EditorState.error(
        failure: const Failure.loadFailed(message: 'Failed to load image'),
      ));
    }
  }

  Future<void> _onPickImage(
    PickImage event,
    Emitter<EditorState> emit,
  ) async {
    emit(const EditorState.loading(message: 'Picking image...'));

    final result = await pickImageUseCase(
      PickImageParams(fromCamera: event.fromCamera),
    );

    result.fold(
      (failure) => emit(EditorState.error(failure: failure)),
      (imagePath) => add(EditorEvent.loadImage(imagePath)),
    );
  }

  Future<void> _onSegmentPerson(
    SegmentPerson event,
    Emitter<EditorState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ImageLoaded) return;

    emit(EditorState.processing(
      imagePath: currentState.imagePath,
      imageBytes: currentState.imageBytes,
      settings: currentState.settings,
      message: 'Removing background...',
      maskData: currentState.maskData,
      maskEdits: currentState.maskEdits,
      preview: currentState.preview,
    ));

    final result = await segmentPersonUseCase(
      SegmentPersonParams(currentState.imageBytes),
    );

    result.fold(
      (failure) => emit(EditorState.error(
        failure: failure,
        imagePath: currentState.imagePath,
        imageBytes: currentState.imageBytes,
        settings: currentState.settings,
      )),
      (maskData) {
        final maskEdits = MaskEdits.empty(maskData.width, maskData.height);

        emit(EditorState.imageLoaded(
          imagePath: currentState.imagePath,
          imageBytes: currentState.imageBytes,
          settings: currentState.settings,
          maskData: maskData,
          maskEdits: maskEdits,
        ));

        // Automatically generate preview
        add(const EditorEvent.generatePreview());
      },
    );
  }

  Future<void> _onUpdateSettings(
    UpdateSettings event,
    Emitter<EditorState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ImageLoaded && currentState is! PreviewReady) return;

    if (currentState is ImageLoaded) {
      emit(EditorState.imageLoaded(
        imagePath: currentState.imagePath,
        imageBytes: currentState.imageBytes,
        settings: event.settings,
        maskData: currentState.maskData,
        maskEdits: currentState.maskEdits,
        preview: currentState.preview,
      ));
    } else if (currentState is PreviewReady) {
      emit(EditorState.previewReady(
        imagePath: currentState.imagePath,
        imageBytes: currentState.imageBytes,
        settings: event.settings,
        maskData: currentState.maskData,
        maskEdits: currentState.maskEdits,
        preview: currentState.preview,
      ));
    }

    // Regenerate preview
    add(const EditorEvent.generatePreview());
  }

  Future<void> _onUpdateBackground(
    UpdateBackground event,
    Emitter<EditorState> emit,
  ) async {
    final currentState = state;
    if (currentState is ImageLoaded) {
      final newSettings = currentState.settings.copyWith(
        background: event.background,
      );
      add(EditorEvent.updateSettings(newSettings));
    } else if (currentState is PreviewReady) {
      final newSettings = currentState.settings.copyWith(
        background: event.background,
      );
      add(EditorEvent.updateSettings(newSettings));
    }
  }

  Future<void> _onUpdateFrameShape(
    UpdateFrameShape event,
    Emitter<EditorState> emit,
  ) async {
    final currentState = state;
    if (currentState is ImageLoaded) {
      final newSettings = currentState.settings.copyWith(
        frameShape: event.frameShape,
      );
      add(EditorEvent.updateSettings(newSettings));
    } else if (currentState is PreviewReady) {
      final newSettings = currentState.settings.copyWith(
        frameShape: event.frameShape,
      );
      add(EditorEvent.updateSettings(newSettings));
    }
  }

  Future<void> _onGeneratePreview(
    GeneratePreview event,
    Emitter<EditorState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ImageLoaded && currentState is! PreviewReady) return;

    final imagePath = currentState is ImageLoaded
        ? currentState.imagePath
        : (currentState as PreviewReady).imagePath;
    final imageBytes = currentState is ImageLoaded
        ? currentState.imageBytes
        : (currentState as PreviewReady).imageBytes;
    final settings = currentState is ImageLoaded
        ? currentState.settings
        : (currentState as PreviewReady).settings;
    final maskData = currentState is ImageLoaded
        ? currentState.maskData
        : (currentState as PreviewReady).maskData;
    final maskEdits = currentState is ImageLoaded
        ? currentState.maskEdits
        : (currentState as PreviewReady).maskEdits;

    emit(EditorState.processing(
      imagePath: imagePath,
      imageBytes: imageBytes,
      settings: settings,
      message: 'Generating preview...',
      maskData: maskData,
      maskEdits: maskEdits,
    ));

    final result = await generatePreviewUseCase(
      GeneratePreviewParams(
        sourceBytes: imageBytes,
        maskData: maskData,
        maskEdits: maskEdits,
        settings: settings,
        preset: ExportPreset.linkedIn,
      ),
    );

    result.fold(
      (failure) => emit(EditorState.error(
        failure: failure,
        imagePath: imagePath,
        imageBytes: imageBytes,
        settings: settings,
        maskData: maskData,
        maskEdits: maskEdits,
      )),
      (preview) => emit(EditorState.previewReady(
        imagePath: imagePath,
        imageBytes: imageBytes,
        settings: settings,
        maskData: maskData,
        maskEdits: maskEdits,
        preview: preview,
      )),
    );
  }

  Future<void> _onExportImage(
    ExportImage event,
    Emitter<EditorState> emit,
  ) async {
    final currentState = state;
    if (currentState is! PreviewReady) return;

    emit(EditorState.processing(
      imagePath: currentState.imagePath,
      imageBytes: currentState.imageBytes,
      settings: currentState.settings,
      message: 'Exporting image...',
      maskData: currentState.maskData,
      maskEdits: currentState.maskEdits,
      preview: currentState.preview,
    ));

    final result = await exportImageUseCase(
      ExportImageParams(
        sourceBytes: currentState.imageBytes,
        maskData: currentState.maskData,
        maskEdits: currentState.maskEdits,
        settings: currentState.settings,
        preset: event.preset,
        quality: event.quality,
      ),
    );

    result.fold(
      (failure) => emit(EditorState.error(
        failure: failure,
        imagePath: currentState.imagePath,
        imageBytes: currentState.imageBytes,
        settings: currentState.settings,
        maskData: currentState.maskData,
        maskEdits: currentState.maskEdits,
        preview: currentState.preview,
      )),
      (file) async {
        final fileSize = await file.length();
        emit(EditorState.exportSuccess(
          filePath: file.path,
          fileSizeBytes: fileSize,
        ));
      },
    );
  }

  Future<void> _onApplyBrushStroke(
    ApplyBrushStroke event,
    Emitter<EditorState> emit,
  ) async {
    // TODO: Implement brush stroke application
    // This requires modifying the maskEdits
    add(const EditorEvent.generatePreview());
  }
}
