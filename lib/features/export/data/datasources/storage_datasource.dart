import 'dart:io';
import 'dart:typed_data';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../domain/entities/export_entry.dart';

/// Data source for storage operations
@lazySingleton
class StorageDataSource {
  final SharedPreferences sharedPreferences;

  StorageDataSource(this.sharedPreferences);

  Future<File> saveImage({
    required Uint8List bytes,
    required String presetId,
    required String extension,
  }) async {
    final directory = await _getSaveDirectory();
    final timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
    final filename = 'PPM_${presetId}_$timestamp.$extension';
    final file = File('${directory.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  Future<Directory> _getSaveDirectory() async {
    if (Platform.isAndroid) {
      final dirs = await getExternalStorageDirectories(
        type: StorageDirectory.pictures,
      );
      if (dirs == null || dirs.isEmpty) {
        throw Exception('No external storage directory');
      }
      final picturesDir = Directory('${dirs.first.path}/ProfessionalPhotoMaker');
      if (!await picturesDir.exists()) {
        await picturesDir.create(recursive: true);
      }
      return picturesDir;
    }

    final docsDir = await getApplicationDocumentsDirectory();
    final outputDir = Directory('${docsDir.path}/ProfessionalPhotoMaker');
    if (!await outputDir.exists()) {
      await outputDir.create(recursive: true);
    }
    return outputDir;
  }

  Future<void> shareImage(String filePath) async {
    await Share.shareXFiles([XFile(filePath)]);
  }

  Future<bool> checkStoragePermission() async {
    if (Platform.isIOS) {
      final status = await Permission.photos.status;
      return status.isGranted;
    }
    final status = await Permission.storage.status;
    return status.isGranted;
  }

  Future<bool> requestStoragePermission() async {
    if (Platform.isIOS) {
      final status = await Permission.photos.request();
      return status.isGranted;
    }
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  Future<List<ExportEntry>> getExportHistory() async {
    final json = sharedPreferences.getString('export_history');
    if (json == null) return [];

    final List<dynamic> decoded = jsonDecode(json);
    return decoded.map((e) => ExportEntry.fromJson(e)).toList();
  }

  Future<void> saveExportHistory(List<ExportEntry> history) async {
    final encoded = jsonEncode(history.map((e) => e.toJson()).toList());
    await sharedPreferences.setString('export_history', encoded);
  }
}
