// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  String? get debugDetails => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            debugDetails: freezed == debugDetails
                ? _value.debugDetails
                : debugDetails // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(
    _$PermissionDeniedImpl value,
    $Res Function(_$PermissionDeniedImpl) then,
  ) = __$$PermissionDeniedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(
    _$PermissionDeniedImpl _value,
    $Res Function(_$PermissionDeniedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$PermissionDeniedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$PermissionDeniedImpl implements PermissionDenied {
  const _$PermissionDeniedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.permissionDenied(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionDeniedImplCopyWith<_$PermissionDeniedImpl> get copyWith =>
      __$$PermissionDeniedImplCopyWithImpl<_$PermissionDeniedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return permissionDenied(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return permissionDenied?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied implements Failure {
  const factory PermissionDenied({
    required final String message,
    final String? debugDetails,
  }) = _$PermissionDeniedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionDeniedImplCopyWith<_$PermissionDeniedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingFailedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ProcessingFailedImplCopyWith(
    _$ProcessingFailedImpl value,
    $Res Function(_$ProcessingFailedImpl) then,
  ) = __$$ProcessingFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$ProcessingFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ProcessingFailedImpl>
    implements _$$ProcessingFailedImplCopyWith<$Res> {
  __$$ProcessingFailedImplCopyWithImpl(
    _$ProcessingFailedImpl _value,
    $Res Function(_$ProcessingFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$ProcessingFailedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ProcessingFailedImpl implements ProcessingFailed {
  const _$ProcessingFailedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.processingFailed(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingFailedImplCopyWith<_$ProcessingFailedImpl> get copyWith =>
      __$$ProcessingFailedImplCopyWithImpl<_$ProcessingFailedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return processingFailed(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return processingFailed?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (processingFailed != null) {
      return processingFailed(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return processingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return processingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (processingFailed != null) {
      return processingFailed(this);
    }
    return orElse();
  }
}

abstract class ProcessingFailed implements Failure {
  const factory ProcessingFailed({
    required final String message,
    final String? debugDetails,
  }) = _$ProcessingFailedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessingFailedImplCopyWith<_$ProcessingFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveFailedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SaveFailedImplCopyWith(
    _$SaveFailedImpl value,
    $Res Function(_$SaveFailedImpl) then,
  ) = __$$SaveFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$SaveFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SaveFailedImpl>
    implements _$$SaveFailedImplCopyWith<$Res> {
  __$$SaveFailedImplCopyWithImpl(
    _$SaveFailedImpl _value,
    $Res Function(_$SaveFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$SaveFailedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SaveFailedImpl implements SaveFailed {
  const _$SaveFailedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.saveFailed(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFailedImplCopyWith<_$SaveFailedImpl> get copyWith =>
      __$$SaveFailedImplCopyWithImpl<_$SaveFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return saveFailed(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return saveFailed?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (saveFailed != null) {
      return saveFailed(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return saveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return saveFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (saveFailed != null) {
      return saveFailed(this);
    }
    return orElse();
  }
}

abstract class SaveFailed implements Failure {
  const factory SaveFailed({
    required final String message,
    final String? debugDetails,
  }) = _$SaveFailedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFailedImplCopyWith<_$SaveFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$LoadFailedImplCopyWith(
    _$LoadFailedImpl value,
    $Res Function(_$LoadFailedImpl) then,
  ) = __$$LoadFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$LoadFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LoadFailedImpl>
    implements _$$LoadFailedImplCopyWith<$Res> {
  __$$LoadFailedImplCopyWithImpl(
    _$LoadFailedImpl _value,
    $Res Function(_$LoadFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$LoadFailedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoadFailedImpl implements LoadFailed {
  const _$LoadFailedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.loadFailed(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailedImplCopyWith<_$LoadFailedImpl> get copyWith =>
      __$$LoadFailedImplCopyWithImpl<_$LoadFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return loadFailed(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return loadFailed?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class LoadFailed implements Failure {
  const factory LoadFailed({
    required final String message,
    final String? debugDetails,
  }) = _$LoadFailedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailedImplCopyWith<_$LoadFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SegmentationFailedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SegmentationFailedImplCopyWith(
    _$SegmentationFailedImpl value,
    $Res Function(_$SegmentationFailedImpl) then,
  ) = __$$SegmentationFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$SegmentationFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SegmentationFailedImpl>
    implements _$$SegmentationFailedImplCopyWith<$Res> {
  __$$SegmentationFailedImplCopyWithImpl(
    _$SegmentationFailedImpl _value,
    $Res Function(_$SegmentationFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$SegmentationFailedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SegmentationFailedImpl implements SegmentationFailed {
  const _$SegmentationFailedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.segmentationFailed(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentationFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SegmentationFailedImplCopyWith<_$SegmentationFailedImpl> get copyWith =>
      __$$SegmentationFailedImplCopyWithImpl<_$SegmentationFailedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return segmentationFailed(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return segmentationFailed?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (segmentationFailed != null) {
      return segmentationFailed(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return segmentationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return segmentationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (segmentationFailed != null) {
      return segmentationFailed(this);
    }
    return orElse();
  }
}

abstract class SegmentationFailed implements Failure {
  const factory SegmentationFailed({
    required final String message,
    final String? debugDetails,
  }) = _$SegmentationFailedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SegmentationFailedImplCopyWith<_$SegmentationFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportFailedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ExportFailedImplCopyWith(
    _$ExportFailedImpl value,
    $Res Function(_$ExportFailedImpl) then,
  ) = __$$ExportFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$ExportFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ExportFailedImpl>
    implements _$$ExportFailedImplCopyWith<$Res> {
  __$$ExportFailedImplCopyWithImpl(
    _$ExportFailedImpl _value,
    $Res Function(_$ExportFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$ExportFailedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ExportFailedImpl implements ExportFailed {
  const _$ExportFailedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.exportFailed(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportFailedImplCopyWith<_$ExportFailedImpl> get copyWith =>
      __$$ExportFailedImplCopyWithImpl<_$ExportFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return exportFailed(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return exportFailed?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (exportFailed != null) {
      return exportFailed(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return exportFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return exportFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (exportFailed != null) {
      return exportFailed(this);
    }
    return orElse();
  }
}

abstract class ExportFailed implements Failure {
  const factory ExportFailed({
    required final String message,
    final String? debugDetails,
  }) = _$ExportFailedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportFailedImplCopyWith<_$ExportFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdLoadFailedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AdLoadFailedImplCopyWith(
    _$AdLoadFailedImpl value,
    $Res Function(_$AdLoadFailedImpl) then,
  ) = __$$AdLoadFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$AdLoadFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AdLoadFailedImpl>
    implements _$$AdLoadFailedImplCopyWith<$Res> {
  __$$AdLoadFailedImplCopyWithImpl(
    _$AdLoadFailedImpl _value,
    $Res Function(_$AdLoadFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$AdLoadFailedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AdLoadFailedImpl implements AdLoadFailed {
  const _$AdLoadFailedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.adLoadFailed(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdLoadFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdLoadFailedImplCopyWith<_$AdLoadFailedImpl> get copyWith =>
      __$$AdLoadFailedImplCopyWithImpl<_$AdLoadFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return adLoadFailed(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return adLoadFailed?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (adLoadFailed != null) {
      return adLoadFailed(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return adLoadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return adLoadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (adLoadFailed != null) {
      return adLoadFailed(this);
    }
    return orElse();
  }
}

abstract class AdLoadFailed implements Failure {
  const factory AdLoadFailed({
    required final String message,
    final String? debugDetails,
  }) = _$AdLoadFailedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdLoadFailedImplCopyWith<_$AdLoadFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
    _$UnexpectedImpl value,
    $Res Function(_$UnexpectedImpl) then,
  ) = __$$UnexpectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? debugDetails});
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
    _$UnexpectedImpl _value,
    $Res Function(_$UnexpectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? debugDetails = freezed}) {
    return _then(
      _$UnexpectedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        debugDetails: freezed == debugDetails
            ? _value.debugDetails
            : debugDetails // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UnexpectedImpl implements Unexpected {
  const _$UnexpectedImpl({required this.message, this.debugDetails});

  @override
  final String message;
  @override
  final String? debugDetails;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message, debugDetails: $debugDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.debugDetails, debugDetails) ||
                other.debugDetails == debugDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, debugDetails);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedImplCopyWith<_$UnexpectedImpl> get copyWith =>
      __$$UnexpectedImplCopyWithImpl<_$UnexpectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? debugDetails)
    permissionDenied,
    required TResult Function(String message, String? debugDetails)
    processingFailed,
    required TResult Function(String message, String? debugDetails) saveFailed,
    required TResult Function(String message, String? debugDetails) loadFailed,
    required TResult Function(String message, String? debugDetails)
    segmentationFailed,
    required TResult Function(String message, String? debugDetails)
    exportFailed,
    required TResult Function(String message, String? debugDetails)
    adLoadFailed,
    required TResult Function(String message, String? debugDetails) unexpected,
  }) {
    return unexpected(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? debugDetails)? permissionDenied,
    TResult? Function(String message, String? debugDetails)? processingFailed,
    TResult? Function(String message, String? debugDetails)? saveFailed,
    TResult? Function(String message, String? debugDetails)? loadFailed,
    TResult? Function(String message, String? debugDetails)? segmentationFailed,
    TResult? Function(String message, String? debugDetails)? exportFailed,
    TResult? Function(String message, String? debugDetails)? adLoadFailed,
    TResult? Function(String message, String? debugDetails)? unexpected,
  }) {
    return unexpected?.call(message, debugDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? debugDetails)? permissionDenied,
    TResult Function(String message, String? debugDetails)? processingFailed,
    TResult Function(String message, String? debugDetails)? saveFailed,
    TResult Function(String message, String? debugDetails)? loadFailed,
    TResult Function(String message, String? debugDetails)? segmentationFailed,
    TResult Function(String message, String? debugDetails)? exportFailed,
    TResult Function(String message, String? debugDetails)? adLoadFailed,
    TResult Function(String message, String? debugDetails)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message, debugDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ProcessingFailed value) processingFailed,
    required TResult Function(SaveFailed value) saveFailed,
    required TResult Function(LoadFailed value) loadFailed,
    required TResult Function(SegmentationFailed value) segmentationFailed,
    required TResult Function(ExportFailed value) exportFailed,
    required TResult Function(AdLoadFailed value) adLoadFailed,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ProcessingFailed value)? processingFailed,
    TResult? Function(SaveFailed value)? saveFailed,
    TResult? Function(LoadFailed value)? loadFailed,
    TResult? Function(SegmentationFailed value)? segmentationFailed,
    TResult? Function(ExportFailed value)? exportFailed,
    TResult? Function(AdLoadFailed value)? adLoadFailed,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ProcessingFailed value)? processingFailed,
    TResult Function(SaveFailed value)? saveFailed,
    TResult Function(LoadFailed value)? loadFailed,
    TResult Function(SegmentationFailed value)? segmentationFailed,
    TResult Function(ExportFailed value)? exportFailed,
    TResult Function(AdLoadFailed value)? adLoadFailed,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements Failure {
  const factory Unexpected({
    required final String message,
    final String? debugDetails,
  }) = _$UnexpectedImpl;

  @override
  String get message;
  @override
  String? get debugDetails;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedImplCopyWith<_$UnexpectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
