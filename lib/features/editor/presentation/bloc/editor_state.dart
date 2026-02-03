import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/entities/processed_image.dart';

part 'editor_state.freezed.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState.initial() = EditorInitial;

  const factory EditorState.loading({required String message}) = EditorLoading;

  const factory EditorState.imageLoaded({
    required String imagePath,
    required Uint8List imageBytes,
    required EditorSettings settings,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage? preview,
  }) = ImageLoaded;

  const factory EditorState.processing({
    required String imagePath,
    required Uint8List imageBytes,
    required EditorSettings settings,
    required String message,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage? preview,
  }) = EditorProcessing;

  const factory EditorState.previewReady({
    required String imagePath,
    required Uint8List imageBytes,
    required EditorSettings settings,
    required MaskData? maskData,
    required MaskEdits? maskEdits,
    required ProcessedImage preview,
  }) = PreviewReady;

  const factory EditorState.exportSuccess({
    required String filePath,
    required int fileSizeBytes,
  }) = ExportSuccess;

  const factory EditorState.error({
    required Failure failure,
    String? imagePath,
    Uint8List? imageBytes,
    EditorSettings? settings,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage? preview,
  }) = EditorError;
}
