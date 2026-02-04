import 'dart:typed_data';
import 'dart:io';
import 'package:google_mlkit_selfie_segmentation/google_mlkit_selfie_segmentation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/entities/mask_data.dart';

/// Data source for ML Kit selfie segmentation
@lazySingleton
class MlKitDataSource {
  SelfieSegmenter? _segmenter;

  SelfieSegmenter get segmenter {
    _segmenter ??= SelfieSegmenter(
      mode: SegmenterMode.single,
      enableRawSizeMask: true,
    );
    return _segmenter!;
  }

  Future<MaskData> segmentPerson(Uint8List imageBytes) async {
    try {
      // Save bytes to temp file (ML Kit needs file path)
      final tempDir = await getTemporaryDirectory();
      final tempFile = File('${tempDir.path}/temp_image_${DateTime.now().millisecondsSinceEpoch}.jpg');
      await tempFile.writeAsBytes(imageBytes);

      // Create InputImage from file
      final inputImage = InputImage.fromFile(tempFile);

      // Process with ML Kit
      final mask = await segmenter.processImage(inputImage);

      // Clean up temp file
      try {
        await tempFile.delete();
      } catch (_) {}

      if (mask == null) {
        throw Exception('ML Kit returned null mask');
      }

      // Convert mask to our domain model
      // ML Kit returns List<double> (0.0-1.0), convert to Uint8List (0-255)
      final confidenceBytes = Uint8List.fromList(
        mask.confidences.map((conf) => (conf * 255).round().clamp(0, 255)).toList(),
      );

      return MaskData(
        width: mask.width,
        height: mask.height,
        confidenceMap: confidenceBytes,
      );
    } catch (e) {
      // If ML Kit fails, throw a clear error
      throw Exception('Background removal failed: ${e.toString()}');
    }
  }

  void dispose() {
    _segmenter?.close();
  }
}
