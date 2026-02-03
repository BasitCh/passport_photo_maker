import 'package:freezed_annotation/freezed_annotation.dart';

part 'export_entry.freezed.dart';
part 'export_entry.g.dart';

/// Export history entry
@freezed
class ExportEntry with _$ExportEntry {
  const factory ExportEntry({
    required String path,
    required String presetId,
    required DateTime createdAt,
    required int sizeBytes,
  }) = _ExportEntry;

  factory ExportEntry.fromJson(Map<String, dynamic> json) =>
      _$ExportEntryFromJson(json);
}
