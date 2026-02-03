// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'processed_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProcessedImage {
  Uint8List get bytes => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  ImageFormat get format => throw _privateConstructorUsedError;

  /// Create a copy of ProcessedImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProcessedImageCopyWith<ProcessedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessedImageCopyWith<$Res> {
  factory $ProcessedImageCopyWith(
    ProcessedImage value,
    $Res Function(ProcessedImage) then,
  ) = _$ProcessedImageCopyWithImpl<$Res, ProcessedImage>;
  @useResult
  $Res call({Uint8List bytes, int width, int height, ImageFormat format});
}

/// @nodoc
class _$ProcessedImageCopyWithImpl<$Res, $Val extends ProcessedImage>
    implements $ProcessedImageCopyWith<$Res> {
  _$ProcessedImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProcessedImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? width = null,
    Object? height = null,
    Object? format = null,
  }) {
    return _then(
      _value.copyWith(
            bytes: null == bytes
                ? _value.bytes
                : bytes // ignore: cast_nullable_to_non_nullable
                      as Uint8List,
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as int,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
            format: null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as ImageFormat,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProcessedImageImplCopyWith<$Res>
    implements $ProcessedImageCopyWith<$Res> {
  factory _$$ProcessedImageImplCopyWith(
    _$ProcessedImageImpl value,
    $Res Function(_$ProcessedImageImpl) then,
  ) = __$$ProcessedImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List bytes, int width, int height, ImageFormat format});
}

/// @nodoc
class __$$ProcessedImageImplCopyWithImpl<$Res>
    extends _$ProcessedImageCopyWithImpl<$Res, _$ProcessedImageImpl>
    implements _$$ProcessedImageImplCopyWith<$Res> {
  __$$ProcessedImageImplCopyWithImpl(
    _$ProcessedImageImpl _value,
    $Res Function(_$ProcessedImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProcessedImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? width = null,
    Object? height = null,
    Object? format = null,
  }) {
    return _then(
      _$ProcessedImageImpl(
        bytes: null == bytes
            ? _value.bytes
            : bytes // ignore: cast_nullable_to_non_nullable
                  as Uint8List,
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as ImageFormat,
      ),
    );
  }
}

/// @nodoc

class _$ProcessedImageImpl implements _ProcessedImage {
  const _$ProcessedImageImpl({
    required this.bytes,
    required this.width,
    required this.height,
    required this.format,
  });

  @override
  final Uint8List bytes;
  @override
  final int width;
  @override
  final int height;
  @override
  final ImageFormat format;

  @override
  String toString() {
    return 'ProcessedImage(bytes: $bytes, width: $width, height: $height, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessedImageImpl &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(bytes),
    width,
    height,
    format,
  );

  /// Create a copy of ProcessedImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessedImageImplCopyWith<_$ProcessedImageImpl> get copyWith =>
      __$$ProcessedImageImplCopyWithImpl<_$ProcessedImageImpl>(
        this,
        _$identity,
      );
}

abstract class _ProcessedImage implements ProcessedImage {
  const factory _ProcessedImage({
    required final Uint8List bytes,
    required final int width,
    required final int height,
    required final ImageFormat format,
  }) = _$ProcessedImageImpl;

  @override
  Uint8List get bytes;
  @override
  int get width;
  @override
  int get height;
  @override
  ImageFormat get format;

  /// Create a copy of ProcessedImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessedImageImplCopyWith<_$ProcessedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
