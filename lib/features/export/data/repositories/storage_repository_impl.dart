import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/export_entry.dart';
import '../../domain/repositories/storage_repository.dart';
import '../datasources/storage_datasource.dart';

/// Implementation of StorageRepository (Data layer)
@LazySingleton(as: StorageRepository)
class StorageRepositoryImpl implements StorageRepository {
  final StorageDataSource dataSource;

  StorageRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, File>> saveImage({
    required Uint8List bytes,
    required String presetId,
    required String extension,
  }) async {
    try {
      final file = await dataSource.saveImage(
        bytes: bytes,
        presetId: presetId,
        extension: extension,
      );
      return Right(file);
    } catch (e) {
      return Left(Failure.saveFailed(
        message: 'Failed to save image',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, Unit>> shareImage(String filePath) async {
    try {
      await dataSource.shareImage(filePath);
      return const Right(unit);
    } catch (e) {
      return Left(Failure.unexpected(
        message: 'Failed to share image',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, List<ExportEntry>>> getExportHistory() async {
    try {
      final history = await dataSource.getExportHistory();
      return Right(history);
    } catch (e) {
      return Left(Failure.loadFailed(
        message: 'Failed to load export history',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveExportHistory(
      List<ExportEntry> history) async {
    try {
      await dataSource.saveExportHistory(history);
      return const Right(unit);
    } catch (e) {
      return Left(Failure.saveFailed(
        message: 'Failed to save export history',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> checkStoragePermission() async {
    try {
      final hasPermission = await dataSource.checkStoragePermission();
      return Right(hasPermission);
    } catch (e) {
      return Left(Failure.unexpected(
        message: 'Failed to check storage permission',
        debugDetails: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> requestStoragePermission() async {
    try {
      final granted = await dataSource.requestStoragePermission();
      return Right(granted);
    } catch (e) {
      return Left(Failure.permissionDenied(
        message: 'Failed to request storage permission',
        debugDetails: e.toString(),
      ));
    }
  }
}
