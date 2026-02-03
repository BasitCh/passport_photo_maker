import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mask_data.freezed.dart';

/// Represents segmentation mask data
@freezed
class MaskData with _$MaskData {
  const factory MaskData({
    required int width,
    required int height,
    required Uint8List confidenceMap,
  }) = _MaskData;
}

/// Represents user edits to the mask
@freezed
class MaskEdits with _$MaskEdits {
  const factory MaskEdits({
    required int width,
    required int height,
    required Uint8List alphaMap,
  }) = _MaskEdits;

  factory MaskEdits.empty(int width, int height) => MaskEdits(
        width: width,
        height: height,
        alphaMap: Uint8List.fromList(
          List<int>.filled(width * height, 128),
        ),
      );
}
