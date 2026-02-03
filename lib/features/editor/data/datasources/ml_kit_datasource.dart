import 'dart:typed_data';
import 'package:flutter/painting.dart';
import 'package:google_mlkit_selfie_segmentation/google_mlkit_selfie_segmentation.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import '../../domain/entities/mask_data.dart';

/// Data source for ML Kit selfie segmentation
@lazySingleton
class MlKitDataSource {
  final SelfieSegmenter _segmenter;

  MlKitDataSource()
      : _segmenter = SelfieSegmenter(
          mode: SegmenterMode.stream,
          enableRawSizeMask: true,
        );

  Future<MaskData> segmentPerson(Uint8List imageBytes) async {
    final image = img.decodeImage(imageBytes);
    if (image == null) {
      throw Exception('Failed to decode image');
    }

    // Convert to InputImage for ML Kit
    final inputImage = InputImage.fromBytes(
      bytes: imageBytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: InputImageRotation.rotation0deg,
        format: InputImageFormat.yuv420,
        bytesPerRow: image.width,
      ),
    );

    final mask = await _segmenter.processImage(inputImage);
    if (mask == null) {
      throw Exception('Segmentation failed');
    }

    // Convert confidence values (0.0-1.0) to alpha values (0-255)
    final alphaValues = mask.confidences.map((conf) => (conf * 255).round().clamp(0, 255)).toList();

    return MaskData(
      width: mask.width,
      height: mask.height,
      confidenceMap: Uint8List.fromList(alphaValues),
    );
  }

  void dispose() {
    _segmenter.close();
  }
}
