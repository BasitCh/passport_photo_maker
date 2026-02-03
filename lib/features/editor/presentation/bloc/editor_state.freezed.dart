// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EditorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
    EditorState value,
    $Res Function(EditorState) then,
  ) = _$EditorStateCopyWithImpl<$Res, EditorState>;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res, $Val extends EditorState>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EditorInitialImplCopyWith<$Res> {
  factory _$$EditorInitialImplCopyWith(
    _$EditorInitialImpl value,
    $Res Function(_$EditorInitialImpl) then,
  ) = __$$EditorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorInitialImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$EditorInitialImpl>
    implements _$$EditorInitialImplCopyWith<$Res> {
  __$$EditorInitialImplCopyWithImpl(
    _$EditorInitialImpl _value,
    $Res Function(_$EditorInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditorInitialImpl implements EditorInitial {
  const _$EditorInitialImpl();

  @override
  String toString() {
    return 'EditorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditorInitial implements EditorState {
  const factory EditorInitial() = _$EditorInitialImpl;
}

/// @nodoc
abstract class _$$EditorLoadingImplCopyWith<$Res> {
  factory _$$EditorLoadingImplCopyWith(
    _$EditorLoadingImpl value,
    $Res Function(_$EditorLoadingImpl) then,
  ) = __$$EditorLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EditorLoadingImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$EditorLoadingImpl>
    implements _$$EditorLoadingImplCopyWith<$Res> {
  __$$EditorLoadingImplCopyWithImpl(
    _$EditorLoadingImpl _value,
    $Res Function(_$EditorLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EditorLoadingImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EditorLoadingImpl implements EditorLoading {
  const _$EditorLoadingImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EditorState.loading(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorLoadingImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorLoadingImplCopyWith<_$EditorLoadingImpl> get copyWith =>
      __$$EditorLoadingImplCopyWithImpl<_$EditorLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditorLoading implements EditorState {
  const factory EditorLoading({required final String message}) =
      _$EditorLoadingImpl;

  String get message;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorLoadingImplCopyWith<_$EditorLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageLoadedImplCopyWith<$Res> {
  factory _$$ImageLoadedImplCopyWith(
    _$ImageLoadedImpl value,
    $Res Function(_$ImageLoadedImpl) then,
  ) = __$$ImageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String imagePath,
    Uint8List imageBytes,
    EditorSettings settings,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage? preview,
  });

  $EditorSettingsCopyWith<$Res> get settings;
  $MaskDataCopyWith<$Res>? get maskData;
  $MaskEditsCopyWith<$Res>? get maskEdits;
  $ProcessedImageCopyWith<$Res>? get preview;
}

/// @nodoc
class __$$ImageLoadedImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$ImageLoadedImpl>
    implements _$$ImageLoadedImplCopyWith<$Res> {
  __$$ImageLoadedImplCopyWithImpl(
    _$ImageLoadedImpl _value,
    $Res Function(_$ImageLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageBytes = null,
    Object? settings = null,
    Object? maskData = freezed,
    Object? maskEdits = freezed,
    Object? preview = freezed,
  }) {
    return _then(
      _$ImageLoadedImpl(
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        imageBytes: null == imageBytes
            ? _value.imageBytes
            : imageBytes // ignore: cast_nullable_to_non_nullable
                  as Uint8List,
        settings: null == settings
            ? _value.settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as EditorSettings,
        maskData: freezed == maskData
            ? _value.maskData
            : maskData // ignore: cast_nullable_to_non_nullable
                  as MaskData?,
        maskEdits: freezed == maskEdits
            ? _value.maskEdits
            : maskEdits // ignore: cast_nullable_to_non_nullable
                  as MaskEdits?,
        preview: freezed == preview
            ? _value.preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as ProcessedImage?,
      ),
    );
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorSettingsCopyWith<$Res> get settings {
    return $EditorSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskDataCopyWith<$Res>? get maskData {
    if (_value.maskData == null) {
      return null;
    }

    return $MaskDataCopyWith<$Res>(_value.maskData!, (value) {
      return _then(_value.copyWith(maskData: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskEditsCopyWith<$Res>? get maskEdits {
    if (_value.maskEdits == null) {
      return null;
    }

    return $MaskEditsCopyWith<$Res>(_value.maskEdits!, (value) {
      return _then(_value.copyWith(maskEdits: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessedImageCopyWith<$Res>? get preview {
    if (_value.preview == null) {
      return null;
    }

    return $ProcessedImageCopyWith<$Res>(_value.preview!, (value) {
      return _then(_value.copyWith(preview: value));
    });
  }
}

/// @nodoc

class _$ImageLoadedImpl implements ImageLoaded {
  const _$ImageLoadedImpl({
    required this.imagePath,
    required this.imageBytes,
    required this.settings,
    this.maskData,
    this.maskEdits,
    this.preview,
  });

  @override
  final String imagePath;
  @override
  final Uint8List imageBytes;
  @override
  final EditorSettings settings;
  @override
  final MaskData? maskData;
  @override
  final MaskEdits? maskEdits;
  @override
  final ProcessedImage? preview;

  @override
  String toString() {
    return 'EditorState.imageLoaded(imagePath: $imagePath, imageBytes: $imageBytes, settings: $settings, maskData: $maskData, maskEdits: $maskEdits, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLoadedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(
              other.imageBytes,
              imageBytes,
            ) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.maskData, maskData) ||
                other.maskData == maskData) &&
            (identical(other.maskEdits, maskEdits) ||
                other.maskEdits == maskEdits) &&
            (identical(other.preview, preview) || other.preview == preview));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    imagePath,
    const DeepCollectionEquality().hash(imageBytes),
    settings,
    maskData,
    maskEdits,
    preview,
  );

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLoadedImplCopyWith<_$ImageLoadedImpl> get copyWith =>
      __$$ImageLoadedImplCopyWithImpl<_$ImageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return imageLoaded(
      imagePath,
      imageBytes,
      settings,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return imageLoaded?.call(
      imagePath,
      imageBytes,
      settings,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(
        imagePath,
        imageBytes,
        settings,
        maskData,
        maskEdits,
        preview,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return imageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return imageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(this);
    }
    return orElse();
  }
}

abstract class ImageLoaded implements EditorState {
  const factory ImageLoaded({
    required final String imagePath,
    required final Uint8List imageBytes,
    required final EditorSettings settings,
    final MaskData? maskData,
    final MaskEdits? maskEdits,
    final ProcessedImage? preview,
  }) = _$ImageLoadedImpl;

  String get imagePath;
  Uint8List get imageBytes;
  EditorSettings get settings;
  MaskData? get maskData;
  MaskEdits? get maskEdits;
  ProcessedImage? get preview;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageLoadedImplCopyWith<_$ImageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorProcessingImplCopyWith<$Res> {
  factory _$$EditorProcessingImplCopyWith(
    _$EditorProcessingImpl value,
    $Res Function(_$EditorProcessingImpl) then,
  ) = __$$EditorProcessingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String imagePath,
    Uint8List imageBytes,
    EditorSettings settings,
    String message,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage? preview,
  });

  $EditorSettingsCopyWith<$Res> get settings;
  $MaskDataCopyWith<$Res>? get maskData;
  $MaskEditsCopyWith<$Res>? get maskEdits;
  $ProcessedImageCopyWith<$Res>? get preview;
}

/// @nodoc
class __$$EditorProcessingImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$EditorProcessingImpl>
    implements _$$EditorProcessingImplCopyWith<$Res> {
  __$$EditorProcessingImplCopyWithImpl(
    _$EditorProcessingImpl _value,
    $Res Function(_$EditorProcessingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageBytes = null,
    Object? settings = null,
    Object? message = null,
    Object? maskData = freezed,
    Object? maskEdits = freezed,
    Object? preview = freezed,
  }) {
    return _then(
      _$EditorProcessingImpl(
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        imageBytes: null == imageBytes
            ? _value.imageBytes
            : imageBytes // ignore: cast_nullable_to_non_nullable
                  as Uint8List,
        settings: null == settings
            ? _value.settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as EditorSettings,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        maskData: freezed == maskData
            ? _value.maskData
            : maskData // ignore: cast_nullable_to_non_nullable
                  as MaskData?,
        maskEdits: freezed == maskEdits
            ? _value.maskEdits
            : maskEdits // ignore: cast_nullable_to_non_nullable
                  as MaskEdits?,
        preview: freezed == preview
            ? _value.preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as ProcessedImage?,
      ),
    );
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorSettingsCopyWith<$Res> get settings {
    return $EditorSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskDataCopyWith<$Res>? get maskData {
    if (_value.maskData == null) {
      return null;
    }

    return $MaskDataCopyWith<$Res>(_value.maskData!, (value) {
      return _then(_value.copyWith(maskData: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskEditsCopyWith<$Res>? get maskEdits {
    if (_value.maskEdits == null) {
      return null;
    }

    return $MaskEditsCopyWith<$Res>(_value.maskEdits!, (value) {
      return _then(_value.copyWith(maskEdits: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessedImageCopyWith<$Res>? get preview {
    if (_value.preview == null) {
      return null;
    }

    return $ProcessedImageCopyWith<$Res>(_value.preview!, (value) {
      return _then(_value.copyWith(preview: value));
    });
  }
}

/// @nodoc

class _$EditorProcessingImpl implements EditorProcessing {
  const _$EditorProcessingImpl({
    required this.imagePath,
    required this.imageBytes,
    required this.settings,
    required this.message,
    this.maskData,
    this.maskEdits,
    this.preview,
  });

  @override
  final String imagePath;
  @override
  final Uint8List imageBytes;
  @override
  final EditorSettings settings;
  @override
  final String message;
  @override
  final MaskData? maskData;
  @override
  final MaskEdits? maskEdits;
  @override
  final ProcessedImage? preview;

  @override
  String toString() {
    return 'EditorState.processing(imagePath: $imagePath, imageBytes: $imageBytes, settings: $settings, message: $message, maskData: $maskData, maskEdits: $maskEdits, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorProcessingImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(
              other.imageBytes,
              imageBytes,
            ) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.maskData, maskData) ||
                other.maskData == maskData) &&
            (identical(other.maskEdits, maskEdits) ||
                other.maskEdits == maskEdits) &&
            (identical(other.preview, preview) || other.preview == preview));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    imagePath,
    const DeepCollectionEquality().hash(imageBytes),
    settings,
    message,
    maskData,
    maskEdits,
    preview,
  );

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorProcessingImplCopyWith<_$EditorProcessingImpl> get copyWith =>
      __$$EditorProcessingImplCopyWithImpl<_$EditorProcessingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return processing(
      imagePath,
      imageBytes,
      settings,
      message,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return processing?.call(
      imagePath,
      imageBytes,
      settings,
      message,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(
        imagePath,
        imageBytes,
        settings,
        message,
        maskData,
        maskEdits,
        preview,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class EditorProcessing implements EditorState {
  const factory EditorProcessing({
    required final String imagePath,
    required final Uint8List imageBytes,
    required final EditorSettings settings,
    required final String message,
    final MaskData? maskData,
    final MaskEdits? maskEdits,
    final ProcessedImage? preview,
  }) = _$EditorProcessingImpl;

  String get imagePath;
  Uint8List get imageBytes;
  EditorSettings get settings;
  String get message;
  MaskData? get maskData;
  MaskEdits? get maskEdits;
  ProcessedImage? get preview;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorProcessingImplCopyWith<_$EditorProcessingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewReadyImplCopyWith<$Res> {
  factory _$$PreviewReadyImplCopyWith(
    _$PreviewReadyImpl value,
    $Res Function(_$PreviewReadyImpl) then,
  ) = __$$PreviewReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String imagePath,
    Uint8List imageBytes,
    EditorSettings settings,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage preview,
  });

  $EditorSettingsCopyWith<$Res> get settings;
  $MaskDataCopyWith<$Res>? get maskData;
  $MaskEditsCopyWith<$Res>? get maskEdits;
  $ProcessedImageCopyWith<$Res> get preview;
}

/// @nodoc
class __$$PreviewReadyImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$PreviewReadyImpl>
    implements _$$PreviewReadyImplCopyWith<$Res> {
  __$$PreviewReadyImplCopyWithImpl(
    _$PreviewReadyImpl _value,
    $Res Function(_$PreviewReadyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageBytes = null,
    Object? settings = null,
    Object? maskData = freezed,
    Object? maskEdits = freezed,
    Object? preview = null,
  }) {
    return _then(
      _$PreviewReadyImpl(
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        imageBytes: null == imageBytes
            ? _value.imageBytes
            : imageBytes // ignore: cast_nullable_to_non_nullable
                  as Uint8List,
        settings: null == settings
            ? _value.settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as EditorSettings,
        maskData: freezed == maskData
            ? _value.maskData
            : maskData // ignore: cast_nullable_to_non_nullable
                  as MaskData?,
        maskEdits: freezed == maskEdits
            ? _value.maskEdits
            : maskEdits // ignore: cast_nullable_to_non_nullable
                  as MaskEdits?,
        preview: null == preview
            ? _value.preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as ProcessedImage,
      ),
    );
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorSettingsCopyWith<$Res> get settings {
    return $EditorSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskDataCopyWith<$Res>? get maskData {
    if (_value.maskData == null) {
      return null;
    }

    return $MaskDataCopyWith<$Res>(_value.maskData!, (value) {
      return _then(_value.copyWith(maskData: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskEditsCopyWith<$Res>? get maskEdits {
    if (_value.maskEdits == null) {
      return null;
    }

    return $MaskEditsCopyWith<$Res>(_value.maskEdits!, (value) {
      return _then(_value.copyWith(maskEdits: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessedImageCopyWith<$Res> get preview {
    return $ProcessedImageCopyWith<$Res>(_value.preview, (value) {
      return _then(_value.copyWith(preview: value));
    });
  }
}

/// @nodoc

class _$PreviewReadyImpl implements PreviewReady {
  const _$PreviewReadyImpl({
    required this.imagePath,
    required this.imageBytes,
    required this.settings,
    required this.maskData,
    required this.maskEdits,
    required this.preview,
  });

  @override
  final String imagePath;
  @override
  final Uint8List imageBytes;
  @override
  final EditorSettings settings;
  @override
  final MaskData? maskData;
  @override
  final MaskEdits? maskEdits;
  @override
  final ProcessedImage preview;

  @override
  String toString() {
    return 'EditorState.previewReady(imagePath: $imagePath, imageBytes: $imageBytes, settings: $settings, maskData: $maskData, maskEdits: $maskEdits, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewReadyImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(
              other.imageBytes,
              imageBytes,
            ) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.maskData, maskData) ||
                other.maskData == maskData) &&
            (identical(other.maskEdits, maskEdits) ||
                other.maskEdits == maskEdits) &&
            (identical(other.preview, preview) || other.preview == preview));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    imagePath,
    const DeepCollectionEquality().hash(imageBytes),
    settings,
    maskData,
    maskEdits,
    preview,
  );

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewReadyImplCopyWith<_$PreviewReadyImpl> get copyWith =>
      __$$PreviewReadyImplCopyWithImpl<_$PreviewReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return previewReady(
      imagePath,
      imageBytes,
      settings,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return previewReady?.call(
      imagePath,
      imageBytes,
      settings,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (previewReady != null) {
      return previewReady(
        imagePath,
        imageBytes,
        settings,
        maskData,
        maskEdits,
        preview,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return previewReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return previewReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (previewReady != null) {
      return previewReady(this);
    }
    return orElse();
  }
}

abstract class PreviewReady implements EditorState {
  const factory PreviewReady({
    required final String imagePath,
    required final Uint8List imageBytes,
    required final EditorSettings settings,
    required final MaskData? maskData,
    required final MaskEdits? maskEdits,
    required final ProcessedImage preview,
  }) = _$PreviewReadyImpl;

  String get imagePath;
  Uint8List get imageBytes;
  EditorSettings get settings;
  MaskData? get maskData;
  MaskEdits? get maskEdits;
  ProcessedImage get preview;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewReadyImplCopyWith<_$PreviewReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportSuccessImplCopyWith<$Res> {
  factory _$$ExportSuccessImplCopyWith(
    _$ExportSuccessImpl value,
    $Res Function(_$ExportSuccessImpl) then,
  ) = __$$ExportSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath, int fileSizeBytes});
}

/// @nodoc
class __$$ExportSuccessImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$ExportSuccessImpl>
    implements _$$ExportSuccessImplCopyWith<$Res> {
  __$$ExportSuccessImplCopyWithImpl(
    _$ExportSuccessImpl _value,
    $Res Function(_$ExportSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filePath = null, Object? fileSizeBytes = null}) {
    return _then(
      _$ExportSuccessImpl(
        filePath: null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                  as String,
        fileSizeBytes: null == fileSizeBytes
            ? _value.fileSizeBytes
            : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ExportSuccessImpl implements ExportSuccess {
  const _$ExportSuccessImpl({
    required this.filePath,
    required this.fileSizeBytes,
  });

  @override
  final String filePath;
  @override
  final int fileSizeBytes;

  @override
  String toString() {
    return 'EditorState.exportSuccess(filePath: $filePath, fileSizeBytes: $fileSizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportSuccessImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileSizeBytes, fileSizeBytes) ||
                other.fileSizeBytes == fileSizeBytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, fileSizeBytes);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportSuccessImplCopyWith<_$ExportSuccessImpl> get copyWith =>
      __$$ExportSuccessImplCopyWithImpl<_$ExportSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return exportSuccess(filePath, fileSizeBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return exportSuccess?.call(filePath, fileSizeBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (exportSuccess != null) {
      return exportSuccess(filePath, fileSizeBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return exportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return exportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (exportSuccess != null) {
      return exportSuccess(this);
    }
    return orElse();
  }
}

abstract class ExportSuccess implements EditorState {
  const factory ExportSuccess({
    required final String filePath,
    required final int fileSizeBytes,
  }) = _$ExportSuccessImpl;

  String get filePath;
  int get fileSizeBytes;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportSuccessImplCopyWith<_$ExportSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorErrorImplCopyWith<$Res> {
  factory _$$EditorErrorImplCopyWith(
    _$EditorErrorImpl value,
    $Res Function(_$EditorErrorImpl) then,
  ) = __$$EditorErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    Failure failure,
    String? imagePath,
    Uint8List? imageBytes,
    EditorSettings? settings,
    MaskData? maskData,
    MaskEdits? maskEdits,
    ProcessedImage? preview,
  });

  $FailureCopyWith<$Res> get failure;
  $EditorSettingsCopyWith<$Res>? get settings;
  $MaskDataCopyWith<$Res>? get maskData;
  $MaskEditsCopyWith<$Res>? get maskEdits;
  $ProcessedImageCopyWith<$Res>? get preview;
}

/// @nodoc
class __$$EditorErrorImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$EditorErrorImpl>
    implements _$$EditorErrorImplCopyWith<$Res> {
  __$$EditorErrorImplCopyWithImpl(
    _$EditorErrorImpl _value,
    $Res Function(_$EditorErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? imagePath = freezed,
    Object? imageBytes = freezed,
    Object? settings = freezed,
    Object? maskData = freezed,
    Object? maskEdits = freezed,
    Object? preview = freezed,
  }) {
    return _then(
      _$EditorErrorImpl(
        failure: null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
        imagePath: freezed == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageBytes: freezed == imageBytes
            ? _value.imageBytes
            : imageBytes // ignore: cast_nullable_to_non_nullable
                  as Uint8List?,
        settings: freezed == settings
            ? _value.settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as EditorSettings?,
        maskData: freezed == maskData
            ? _value.maskData
            : maskData // ignore: cast_nullable_to_non_nullable
                  as MaskData?,
        maskEdits: freezed == maskEdits
            ? _value.maskEdits
            : maskEdits // ignore: cast_nullable_to_non_nullable
                  as MaskEdits?,
        preview: freezed == preview
            ? _value.preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as ProcessedImage?,
      ),
    );
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorSettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $EditorSettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskDataCopyWith<$Res>? get maskData {
    if (_value.maskData == null) {
      return null;
    }

    return $MaskDataCopyWith<$Res>(_value.maskData!, (value) {
      return _then(_value.copyWith(maskData: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskEditsCopyWith<$Res>? get maskEdits {
    if (_value.maskEdits == null) {
      return null;
    }

    return $MaskEditsCopyWith<$Res>(_value.maskEdits!, (value) {
      return _then(_value.copyWith(maskEdits: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessedImageCopyWith<$Res>? get preview {
    if (_value.preview == null) {
      return null;
    }

    return $ProcessedImageCopyWith<$Res>(_value.preview!, (value) {
      return _then(_value.copyWith(preview: value));
    });
  }
}

/// @nodoc

class _$EditorErrorImpl implements EditorError {
  const _$EditorErrorImpl({
    required this.failure,
    this.imagePath,
    this.imageBytes,
    this.settings,
    this.maskData,
    this.maskEdits,
    this.preview,
  });

  @override
  final Failure failure;
  @override
  final String? imagePath;
  @override
  final Uint8List? imageBytes;
  @override
  final EditorSettings? settings;
  @override
  final MaskData? maskData;
  @override
  final MaskEdits? maskEdits;
  @override
  final ProcessedImage? preview;

  @override
  String toString() {
    return 'EditorState.error(failure: $failure, imagePath: $imagePath, imageBytes: $imageBytes, settings: $settings, maskData: $maskData, maskEdits: $maskEdits, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(
              other.imageBytes,
              imageBytes,
            ) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.maskData, maskData) ||
                other.maskData == maskData) &&
            (identical(other.maskEdits, maskEdits) ||
                other.maskEdits == maskEdits) &&
            (identical(other.preview, preview) || other.preview == preview));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    failure,
    imagePath,
    const DeepCollectionEquality().hash(imageBytes),
    settings,
    maskData,
    maskEdits,
    preview,
  );

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorErrorImplCopyWith<_$EditorErrorImpl> get copyWith =>
      __$$EditorErrorImplCopyWithImpl<_$EditorErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    imageLoaded,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    processing,
    required TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )
    previewReady,
    required TResult Function(String filePath, int fileSizeBytes) exportSuccess,
    required TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )
    error,
  }) {
    return error(
      failure,
      imagePath,
      imageBytes,
      settings,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult? Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult? Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult? Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
  }) {
    return error?.call(
      failure,
      imagePath,
      imageBytes,
      settings,
      maskData,
      maskEdits,
      preview,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    imageLoaded,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      String message,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    processing,
    TResult Function(
      String imagePath,
      Uint8List imageBytes,
      EditorSettings settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage preview,
    )?
    previewReady,
    TResult Function(String filePath, int fileSizeBytes)? exportSuccess,
    TResult Function(
      Failure failure,
      String? imagePath,
      Uint8List? imageBytes,
      EditorSettings? settings,
      MaskData? maskData,
      MaskEdits? maskEdits,
      ProcessedImage? preview,
    )?
    error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(
        failure,
        imagePath,
        imageBytes,
        settings,
        maskData,
        maskEdits,
        preview,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorInitial value) initial,
    required TResult Function(EditorLoading value) loading,
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(EditorProcessing value) processing,
    required TResult Function(PreviewReady value) previewReady,
    required TResult Function(ExportSuccess value) exportSuccess,
    required TResult Function(EditorError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorInitial value)? initial,
    TResult? Function(EditorLoading value)? loading,
    TResult? Function(ImageLoaded value)? imageLoaded,
    TResult? Function(EditorProcessing value)? processing,
    TResult? Function(PreviewReady value)? previewReady,
    TResult? Function(ExportSuccess value)? exportSuccess,
    TResult? Function(EditorError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorInitial value)? initial,
    TResult Function(EditorLoading value)? loading,
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(EditorProcessing value)? processing,
    TResult Function(PreviewReady value)? previewReady,
    TResult Function(ExportSuccess value)? exportSuccess,
    TResult Function(EditorError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditorError implements EditorState {
  const factory EditorError({
    required final Failure failure,
    final String? imagePath,
    final Uint8List? imageBytes,
    final EditorSettings? settings,
    final MaskData? maskData,
    final MaskEdits? maskEdits,
    final ProcessedImage? preview,
  }) = _$EditorErrorImpl;

  Failure get failure;
  String? get imagePath;
  Uint8List? get imageBytes;
  EditorSettings? get settings;
  MaskData? get maskData;
  MaskEdits? get maskEdits;
  ProcessedImage? get preview;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorErrorImplCopyWith<_$EditorErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
