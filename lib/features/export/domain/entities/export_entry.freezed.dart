// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExportEntry _$ExportEntryFromJson(Map<String, dynamic> json) {
  return _ExportEntry.fromJson(json);
}

/// @nodoc
mixin _$ExportEntry {
  String get path => throw _privateConstructorUsedError;
  String get presetId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;

  /// Serializes this ExportEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExportEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExportEntryCopyWith<ExportEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportEntryCopyWith<$Res> {
  factory $ExportEntryCopyWith(
    ExportEntry value,
    $Res Function(ExportEntry) then,
  ) = _$ExportEntryCopyWithImpl<$Res, ExportEntry>;
  @useResult
  $Res call({String path, String presetId, DateTime createdAt, int sizeBytes});
}

/// @nodoc
class _$ExportEntryCopyWithImpl<$Res, $Val extends ExportEntry>
    implements $ExportEntryCopyWith<$Res> {
  _$ExportEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExportEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? presetId = null,
    Object? createdAt = null,
    Object? sizeBytes = null,
  }) {
    return _then(
      _value.copyWith(
            path: null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                      as String,
            presetId: null == presetId
                ? _value.presetId
                : presetId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExportEntryImplCopyWith<$Res>
    implements $ExportEntryCopyWith<$Res> {
  factory _$$ExportEntryImplCopyWith(
    _$ExportEntryImpl value,
    $Res Function(_$ExportEntryImpl) then,
  ) = __$$ExportEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String presetId, DateTime createdAt, int sizeBytes});
}

/// @nodoc
class __$$ExportEntryImplCopyWithImpl<$Res>
    extends _$ExportEntryCopyWithImpl<$Res, _$ExportEntryImpl>
    implements _$$ExportEntryImplCopyWith<$Res> {
  __$$ExportEntryImplCopyWithImpl(
    _$ExportEntryImpl _value,
    $Res Function(_$ExportEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExportEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? presetId = null,
    Object? createdAt = null,
    Object? sizeBytes = null,
  }) {
    return _then(
      _$ExportEntryImpl(
        path: null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String,
        presetId: null == presetId
            ? _value.presetId
            : presetId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExportEntryImpl implements _ExportEntry {
  const _$ExportEntryImpl({
    required this.path,
    required this.presetId,
    required this.createdAt,
    required this.sizeBytes,
  });

  factory _$ExportEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExportEntryImplFromJson(json);

  @override
  final String path;
  @override
  final String presetId;
  @override
  final DateTime createdAt;
  @override
  final int sizeBytes;

  @override
  String toString() {
    return 'ExportEntry(path: $path, presetId: $presetId, createdAt: $createdAt, sizeBytes: $sizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportEntryImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.presetId, presetId) ||
                other.presetId == presetId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, path, presetId, createdAt, sizeBytes);

  /// Create a copy of ExportEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportEntryImplCopyWith<_$ExportEntryImpl> get copyWith =>
      __$$ExportEntryImplCopyWithImpl<_$ExportEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExportEntryImplToJson(this);
  }
}

abstract class _ExportEntry implements ExportEntry {
  const factory _ExportEntry({
    required final String path,
    required final String presetId,
    required final DateTime createdAt,
    required final int sizeBytes,
  }) = _$ExportEntryImpl;

  factory _ExportEntry.fromJson(Map<String, dynamic> json) =
      _$ExportEntryImpl.fromJson;

  @override
  String get path;
  @override
  String get presetId;
  @override
  DateTime get createdAt;
  @override
  int get sizeBytes;

  /// Create a copy of ExportEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportEntryImplCopyWith<_$ExportEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
