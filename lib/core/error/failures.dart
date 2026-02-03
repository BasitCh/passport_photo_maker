import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class using freezed for immutability
@freezed
class Failure with _$Failure {
  const factory Failure.permissionDenied({
    required String message,
    String? debugDetails,
  }) = PermissionDenied;

  const factory Failure.processingFailed({
    required String message,
    String? debugDetails,
  }) = ProcessingFailed;

  const factory Failure.saveFailed({
    required String message,
    String? debugDetails,
  }) = SaveFailed;

  const factory Failure.loadFailed({
    required String message,
    String? debugDetails,
  }) = LoadFailed;

  const factory Failure.segmentationFailed({
    required String message,
    String? debugDetails,
  }) = SegmentationFailed;

  const factory Failure.exportFailed({
    required String message,
    String? debugDetails,
  }) = ExportFailed;

  const factory Failure.adLoadFailed({
    required String message,
    String? debugDetails,
  }) = AdLoadFailed;

  const factory Failure.unexpected({
    required String message,
    String? debugDetails,
  }) = Unexpected;
}
