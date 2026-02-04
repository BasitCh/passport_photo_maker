import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/repositories/image_repository.dart';

part 'editor_event.freezed.dart';

@freezed
class EditorEvent with _$EditorEvent {
  /// Load image from path
  const factory EditorEvent.loadImage(String imagePath) = LoadImage;

  /// Pick new image
  const factory EditorEvent.pickImage({@Default(false) bool fromCamera}) =
      PickImage;

  /// Pick background image
  const factory EditorEvent.pickBackgroundImage() = PickBackgroundImage;

  /// Segment person from background
  const factory EditorEvent.segmentPerson() = SegmentPerson;

  /// Update editor settings
  const factory EditorEvent.updateSettings(EditorSettings settings) =
      UpdateSettings;

  /// Update background
  const factory EditorEvent.updateBackground(BackgroundStyle background) =
      UpdateBackground;

  /// Update frame shape
  const factory EditorEvent.updateFrameShape(FrameShape frameShape) =
      UpdateFrameShape;

  /// Generate preview
  const factory EditorEvent.generatePreview() = GeneratePreview;

  /// Export image
  const factory EditorEvent.exportImage({
    required ExportPreset preset,
    required ExportQuality quality,
  }) = ExportImage;

  /// Apply brush stroke for manual mask editing
  const factory EditorEvent.applyBrushStroke({
    required int x,
    required int y,
    required int brushSize,
    required bool eraseMode,
  }) = ApplyBrushStroke;

  /// Undo mask edit
  const factory EditorEvent.undoMaskEdit() = UndoMaskEdit;

  /// Redo mask edit
  const factory EditorEvent.redoMaskEdit() = RedoMaskEdit;
}
