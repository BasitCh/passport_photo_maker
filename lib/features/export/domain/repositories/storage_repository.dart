import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/export_entry.dart';

/// Repository interface for file storage operations (Domain layer)
abstract class StorageRepository {
  /// Save image bytes to device storage
  Future<Either<Failure, File>> saveImage({
    required Uint8List bytes,
    required String presetId,
    required String extension,
  });

  /// Share image file
  Future<Either<Failure, Unit>> shareImage(String filePath);

  /// Load export history
  Future<Either<Failure, List<ExportEntry>>> getExportHistory();

  /// Save export history
  Future<Either<Failure, Unit>> saveExportHistory(List<ExportEntry> history);

  /// Check storage permission
  Future<Either<Failure, bool>> checkStoragePermission();

  /// Request storage permission
  Future<Either<Failure, bool>> requestStoragePermission();
}
