// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExportEntryImpl _$$ExportEntryImplFromJson(Map<String, dynamic> json) =>
    _$ExportEntryImpl(
      path: json['path'] as String,
      presetId: json['presetId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      sizeBytes: (json['sizeBytes'] as num).toInt(),
    );

Map<String, dynamic> _$$ExportEntryImplToJson(_$ExportEntryImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'presetId': instance.presetId,
      'createdAt': instance.createdAt.toIso8601String(),
      'sizeBytes': instance.sizeBytes,
    };
