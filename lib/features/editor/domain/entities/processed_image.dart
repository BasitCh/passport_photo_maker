import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'processed_image.freezed.dart';

/// Represents a processed image with metadata
@freezed
class ProcessedImage with _$ProcessedImage {
  const factory ProcessedImage({
    required Uint8List bytes,
    required int width,
    required int height,
    required ImageFormat format,
  }) = _ProcessedImage;
}

enum ImageFormat {
  jpg,
  png,
}
