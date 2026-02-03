// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mask_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MaskData {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  Uint8List get confidenceMap => throw _privateConstructorUsedError;

  /// Create a copy of MaskData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaskDataCopyWith<MaskData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaskDataCopyWith<$Res> {
  factory $MaskDataCopyWith(MaskData value, $Res Function(MaskData) then) =
      _$MaskDataCopyWithImpl<$Res, MaskData>;
  @useResult
  $Res call({int width, int height, Uint8List confidenceMap});
}

/// @nodoc
class _$MaskDataCopyWithImpl<$Res, $Val extends MaskData>
    implements $MaskDataCopyWith<$Res> {
  _$MaskDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaskData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? confidenceMap = null,
  }) {
    return _then(
      _value.copyWith(
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as int,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
            confidenceMap: null == confidenceMap
                ? _value.confidenceMap
                : confidenceMap // ignore: cast_nullable_to_non_nullable
                      as Uint8List,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MaskDataImplCopyWith<$Res>
    implements $MaskDataCopyWith<$Res> {
  factory _$$MaskDataImplCopyWith(
    _$MaskDataImpl value,
    $Res Function(_$MaskDataImpl) then,
  ) = __$$MaskDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, Uint8List confidenceMap});
}

/// @nodoc
class __$$MaskDataImplCopyWithImpl<$Res>
    extends _$MaskDataCopyWithImpl<$Res, _$MaskDataImpl>
    implements _$$MaskDataImplCopyWith<$Res> {
  __$$MaskDataImplCopyWithImpl(
    _$MaskDataImpl _value,
    $Res Function(_$MaskDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaskData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? confidenceMap = null,
  }) {
    return _then(
      _$MaskDataImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        confidenceMap: null == confidenceMap
            ? _value.confidenceMap
            : confidenceMap // ignore: cast_nullable_to_non_nullable
                  as Uint8List,
      ),
    );
  }
}

/// @nodoc

class _$MaskDataImpl implements _MaskData {
  const _$MaskDataImpl({
    required this.width,
    required this.height,
    required this.confidenceMap,
  });

  @override
  final int width;
  @override
  final int height;
  @override
  final Uint8List confidenceMap;

  @override
  String toString() {
    return 'MaskData(width: $width, height: $height, confidenceMap: $confidenceMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaskDataImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(
              other.confidenceMap,
              confidenceMap,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    width,
    height,
    const DeepCollectionEquality().hash(confidenceMap),
  );

  /// Create a copy of MaskData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaskDataImplCopyWith<_$MaskDataImpl> get copyWith =>
      __$$MaskDataImplCopyWithImpl<_$MaskDataImpl>(this, _$identity);
}

abstract class _MaskData implements MaskData {
  const factory _MaskData({
    required final int width,
    required final int height,
    required final Uint8List confidenceMap,
  }) = _$MaskDataImpl;

  @override
  int get width;
  @override
  int get height;
  @override
  Uint8List get confidenceMap;

  /// Create a copy of MaskData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaskDataImplCopyWith<_$MaskDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MaskEdits {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  Uint8List get alphaMap => throw _privateConstructorUsedError;

  /// Create a copy of MaskEdits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaskEditsCopyWith<MaskEdits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaskEditsCopyWith<$Res> {
  factory $MaskEditsCopyWith(MaskEdits value, $Res Function(MaskEdits) then) =
      _$MaskEditsCopyWithImpl<$Res, MaskEdits>;
  @useResult
  $Res call({int width, int height, Uint8List alphaMap});
}

/// @nodoc
class _$MaskEditsCopyWithImpl<$Res, $Val extends MaskEdits>
    implements $MaskEditsCopyWith<$Res> {
  _$MaskEditsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaskEdits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? alphaMap = null,
  }) {
    return _then(
      _value.copyWith(
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as int,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
            alphaMap: null == alphaMap
                ? _value.alphaMap
                : alphaMap // ignore: cast_nullable_to_non_nullable
                      as Uint8List,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MaskEditsImplCopyWith<$Res>
    implements $MaskEditsCopyWith<$Res> {
  factory _$$MaskEditsImplCopyWith(
    _$MaskEditsImpl value,
    $Res Function(_$MaskEditsImpl) then,
  ) = __$$MaskEditsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, Uint8List alphaMap});
}

/// @nodoc
class __$$MaskEditsImplCopyWithImpl<$Res>
    extends _$MaskEditsCopyWithImpl<$Res, _$MaskEditsImpl>
    implements _$$MaskEditsImplCopyWith<$Res> {
  __$$MaskEditsImplCopyWithImpl(
    _$MaskEditsImpl _value,
    $Res Function(_$MaskEditsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaskEdits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? alphaMap = null,
  }) {
    return _then(
      _$MaskEditsImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        alphaMap: null == alphaMap
            ? _value.alphaMap
            : alphaMap // ignore: cast_nullable_to_non_nullable
                  as Uint8List,
      ),
    );
  }
}

/// @nodoc

class _$MaskEditsImpl implements _MaskEdits {
  const _$MaskEditsImpl({
    required this.width,
    required this.height,
    required this.alphaMap,
  });

  @override
  final int width;
  @override
  final int height;
  @override
  final Uint8List alphaMap;

  @override
  String toString() {
    return 'MaskEdits(width: $width, height: $height, alphaMap: $alphaMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaskEditsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other.alphaMap, alphaMap));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    width,
    height,
    const DeepCollectionEquality().hash(alphaMap),
  );

  /// Create a copy of MaskEdits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaskEditsImplCopyWith<_$MaskEditsImpl> get copyWith =>
      __$$MaskEditsImplCopyWithImpl<_$MaskEditsImpl>(this, _$identity);
}

abstract class _MaskEdits implements MaskEdits {
  const factory _MaskEdits({
    required final int width,
    required final int height,
    required final Uint8List alphaMap,
  }) = _$MaskEditsImpl;

  @override
  int get width;
  @override
  int get height;
  @override
  Uint8List get alphaMap;

  /// Create a copy of MaskEdits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaskEditsImplCopyWith<_$MaskEditsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
