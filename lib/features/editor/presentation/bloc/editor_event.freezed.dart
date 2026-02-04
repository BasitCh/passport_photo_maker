// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorEventCopyWith<$Res> {
  factory $EditorEventCopyWith(
    EditorEvent value,
    $Res Function(EditorEvent) then,
  ) = _$EditorEventCopyWithImpl<$Res, EditorEvent>;
}

/// @nodoc
class _$EditorEventCopyWithImpl<$Res, $Val extends EditorEvent>
    implements $EditorEventCopyWith<$Res> {
  _$EditorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImageImplCopyWith<$Res> {
  factory _$$LoadImageImplCopyWith(
    _$LoadImageImpl value,
    $Res Function(_$LoadImageImpl) then,
  ) = __$$LoadImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$LoadImageImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$LoadImageImpl>
    implements _$$LoadImageImplCopyWith<$Res> {
  __$$LoadImageImplCopyWithImpl(
    _$LoadImageImpl _value,
    $Res Function(_$LoadImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imagePath = null}) {
    return _then(
      _$LoadImageImpl(
        null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadImageImpl implements LoadImage {
  const _$LoadImageImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'EditorEvent.loadImage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImageImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImageImplCopyWith<_$LoadImageImpl> get copyWith =>
      __$$LoadImageImplCopyWithImpl<_$LoadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return loadImage(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return loadImage?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (loadImage != null) {
      return loadImage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return loadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return loadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (loadImage != null) {
      return loadImage(this);
    }
    return orElse();
  }
}

abstract class LoadImage implements EditorEvent {
  const factory LoadImage(final String imagePath) = _$LoadImageImpl;

  String get imagePath;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadImageImplCopyWith<_$LoadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageImplCopyWith<$Res> {
  factory _$$PickImageImplCopyWith(
    _$PickImageImpl value,
    $Res Function(_$PickImageImpl) then,
  ) = __$$PickImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool fromCamera});
}

/// @nodoc
class __$$PickImageImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$PickImageImpl>
    implements _$$PickImageImplCopyWith<$Res> {
  __$$PickImageImplCopyWithImpl(
    _$PickImageImpl _value,
    $Res Function(_$PickImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromCamera = null}) {
    return _then(
      _$PickImageImpl(
        fromCamera: null == fromCamera
            ? _value.fromCamera
            : fromCamera // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PickImageImpl implements PickImage {
  const _$PickImageImpl({this.fromCamera = false});

  @override
  @JsonKey()
  final bool fromCamera;

  @override
  String toString() {
    return 'EditorEvent.pickImage(fromCamera: $fromCamera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageImpl &&
            (identical(other.fromCamera, fromCamera) ||
                other.fromCamera == fromCamera));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromCamera);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageImplCopyWith<_$PickImageImpl> get copyWith =>
      __$$PickImageImplCopyWithImpl<_$PickImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return pickImage(fromCamera);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return pickImage?.call(fromCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(fromCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImage implements EditorEvent {
  const factory PickImage({final bool fromCamera}) = _$PickImageImpl;

  bool get fromCamera;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickImageImplCopyWith<_$PickImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickBackgroundImageImplCopyWith<$Res> {
  factory _$$PickBackgroundImageImplCopyWith(
    _$PickBackgroundImageImpl value,
    $Res Function(_$PickBackgroundImageImpl) then,
  ) = __$$PickBackgroundImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickBackgroundImageImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$PickBackgroundImageImpl>
    implements _$$PickBackgroundImageImplCopyWith<$Res> {
  __$$PickBackgroundImageImplCopyWithImpl(
    _$PickBackgroundImageImpl _value,
    $Res Function(_$PickBackgroundImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickBackgroundImageImpl implements PickBackgroundImage {
  const _$PickBackgroundImageImpl();

  @override
  String toString() {
    return 'EditorEvent.pickBackgroundImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickBackgroundImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return pickBackgroundImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return pickBackgroundImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (pickBackgroundImage != null) {
      return pickBackgroundImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return pickBackgroundImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return pickBackgroundImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (pickBackgroundImage != null) {
      return pickBackgroundImage(this);
    }
    return orElse();
  }
}

abstract class PickBackgroundImage implements EditorEvent {
  const factory PickBackgroundImage() = _$PickBackgroundImageImpl;
}

/// @nodoc
abstract class _$$SegmentPersonImplCopyWith<$Res> {
  factory _$$SegmentPersonImplCopyWith(
    _$SegmentPersonImpl value,
    $Res Function(_$SegmentPersonImpl) then,
  ) = __$$SegmentPersonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SegmentPersonImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$SegmentPersonImpl>
    implements _$$SegmentPersonImplCopyWith<$Res> {
  __$$SegmentPersonImplCopyWithImpl(
    _$SegmentPersonImpl _value,
    $Res Function(_$SegmentPersonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SegmentPersonImpl implements SegmentPerson {
  const _$SegmentPersonImpl();

  @override
  String toString() {
    return 'EditorEvent.segmentPerson()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SegmentPersonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return segmentPerson();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return segmentPerson?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (segmentPerson != null) {
      return segmentPerson();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return segmentPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return segmentPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (segmentPerson != null) {
      return segmentPerson(this);
    }
    return orElse();
  }
}

abstract class SegmentPerson implements EditorEvent {
  const factory SegmentPerson() = _$SegmentPersonImpl;
}

/// @nodoc
abstract class _$$UpdateSettingsImplCopyWith<$Res> {
  factory _$$UpdateSettingsImplCopyWith(
    _$UpdateSettingsImpl value,
    $Res Function(_$UpdateSettingsImpl) then,
  ) = __$$UpdateSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditorSettings settings});

  $EditorSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$UpdateSettingsImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$UpdateSettingsImpl>
    implements _$$UpdateSettingsImplCopyWith<$Res> {
  __$$UpdateSettingsImplCopyWithImpl(
    _$UpdateSettingsImpl _value,
    $Res Function(_$UpdateSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? settings = null}) {
    return _then(
      _$UpdateSettingsImpl(
        null == settings
            ? _value.settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as EditorSettings,
      ),
    );
  }

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorSettingsCopyWith<$Res> get settings {
    return $EditorSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$UpdateSettingsImpl implements UpdateSettings {
  const _$UpdateSettingsImpl(this.settings);

  @override
  final EditorSettings settings;

  @override
  String toString() {
    return 'EditorEvent.updateSettings(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSettingsImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSettingsImplCopyWith<_$UpdateSettingsImpl> get copyWith =>
      __$$UpdateSettingsImplCopyWithImpl<_$UpdateSettingsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return updateSettings(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return updateSettings?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class UpdateSettings implements EditorEvent {
  const factory UpdateSettings(final EditorSettings settings) =
      _$UpdateSettingsImpl;

  EditorSettings get settings;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSettingsImplCopyWith<_$UpdateSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBackgroundImplCopyWith<$Res> {
  factory _$$UpdateBackgroundImplCopyWith(
    _$UpdateBackgroundImpl value,
    $Res Function(_$UpdateBackgroundImpl) then,
  ) = __$$UpdateBackgroundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BackgroundStyle background});

  $BackgroundStyleCopyWith<$Res> get background;
}

/// @nodoc
class __$$UpdateBackgroundImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$UpdateBackgroundImpl>
    implements _$$UpdateBackgroundImplCopyWith<$Res> {
  __$$UpdateBackgroundImplCopyWithImpl(
    _$UpdateBackgroundImpl _value,
    $Res Function(_$UpdateBackgroundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? background = null}) {
    return _then(
      _$UpdateBackgroundImpl(
        null == background
            ? _value.background
            : background // ignore: cast_nullable_to_non_nullable
                  as BackgroundStyle,
      ),
    );
  }

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundStyleCopyWith<$Res> get background {
    return $BackgroundStyleCopyWith<$Res>(_value.background, (value) {
      return _then(_value.copyWith(background: value));
    });
  }
}

/// @nodoc

class _$UpdateBackgroundImpl implements UpdateBackground {
  const _$UpdateBackgroundImpl(this.background);

  @override
  final BackgroundStyle background;

  @override
  String toString() {
    return 'EditorEvent.updateBackground(background: $background)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBackgroundImpl &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @override
  int get hashCode => Object.hash(runtimeType, background);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBackgroundImplCopyWith<_$UpdateBackgroundImpl> get copyWith =>
      __$$UpdateBackgroundImplCopyWithImpl<_$UpdateBackgroundImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return updateBackground(background);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return updateBackground?.call(background);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (updateBackground != null) {
      return updateBackground(background);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return updateBackground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return updateBackground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (updateBackground != null) {
      return updateBackground(this);
    }
    return orElse();
  }
}

abstract class UpdateBackground implements EditorEvent {
  const factory UpdateBackground(final BackgroundStyle background) =
      _$UpdateBackgroundImpl;

  BackgroundStyle get background;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBackgroundImplCopyWith<_$UpdateBackgroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFrameShapeImplCopyWith<$Res> {
  factory _$$UpdateFrameShapeImplCopyWith(
    _$UpdateFrameShapeImpl value,
    $Res Function(_$UpdateFrameShapeImpl) then,
  ) = __$$UpdateFrameShapeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FrameShape frameShape});
}

/// @nodoc
class __$$UpdateFrameShapeImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$UpdateFrameShapeImpl>
    implements _$$UpdateFrameShapeImplCopyWith<$Res> {
  __$$UpdateFrameShapeImplCopyWithImpl(
    _$UpdateFrameShapeImpl _value,
    $Res Function(_$UpdateFrameShapeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? frameShape = null}) {
    return _then(
      _$UpdateFrameShapeImpl(
        null == frameShape
            ? _value.frameShape
            : frameShape // ignore: cast_nullable_to_non_nullable
                  as FrameShape,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFrameShapeImpl implements UpdateFrameShape {
  const _$UpdateFrameShapeImpl(this.frameShape);

  @override
  final FrameShape frameShape;

  @override
  String toString() {
    return 'EditorEvent.updateFrameShape(frameShape: $frameShape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFrameShapeImpl &&
            (identical(other.frameShape, frameShape) ||
                other.frameShape == frameShape));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frameShape);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFrameShapeImplCopyWith<_$UpdateFrameShapeImpl> get copyWith =>
      __$$UpdateFrameShapeImplCopyWithImpl<_$UpdateFrameShapeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return updateFrameShape(frameShape);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return updateFrameShape?.call(frameShape);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (updateFrameShape != null) {
      return updateFrameShape(frameShape);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return updateFrameShape(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return updateFrameShape?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (updateFrameShape != null) {
      return updateFrameShape(this);
    }
    return orElse();
  }
}

abstract class UpdateFrameShape implements EditorEvent {
  const factory UpdateFrameShape(final FrameShape frameShape) =
      _$UpdateFrameShapeImpl;

  FrameShape get frameShape;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFrameShapeImplCopyWith<_$UpdateFrameShapeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratePreviewImplCopyWith<$Res> {
  factory _$$GeneratePreviewImplCopyWith(
    _$GeneratePreviewImpl value,
    $Res Function(_$GeneratePreviewImpl) then,
  ) = __$$GeneratePreviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneratePreviewImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$GeneratePreviewImpl>
    implements _$$GeneratePreviewImplCopyWith<$Res> {
  __$$GeneratePreviewImplCopyWithImpl(
    _$GeneratePreviewImpl _value,
    $Res Function(_$GeneratePreviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GeneratePreviewImpl implements GeneratePreview {
  const _$GeneratePreviewImpl();

  @override
  String toString() {
    return 'EditorEvent.generatePreview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneratePreviewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return generatePreview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return generatePreview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (generatePreview != null) {
      return generatePreview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return generatePreview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return generatePreview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (generatePreview != null) {
      return generatePreview(this);
    }
    return orElse();
  }
}

abstract class GeneratePreview implements EditorEvent {
  const factory GeneratePreview() = _$GeneratePreviewImpl;
}

/// @nodoc
abstract class _$$ExportImageImplCopyWith<$Res> {
  factory _$$ExportImageImplCopyWith(
    _$ExportImageImpl value,
    $Res Function(_$ExportImageImpl) then,
  ) = __$$ExportImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExportPreset preset, ExportQuality quality});
}

/// @nodoc
class __$$ExportImageImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$ExportImageImpl>
    implements _$$ExportImageImplCopyWith<$Res> {
  __$$ExportImageImplCopyWithImpl(
    _$ExportImageImpl _value,
    $Res Function(_$ExportImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? preset = null, Object? quality = null}) {
    return _then(
      _$ExportImageImpl(
        preset: null == preset
            ? _value.preset
            : preset // ignore: cast_nullable_to_non_nullable
                  as ExportPreset,
        quality: null == quality
            ? _value.quality
            : quality // ignore: cast_nullable_to_non_nullable
                  as ExportQuality,
      ),
    );
  }
}

/// @nodoc

class _$ExportImageImpl implements ExportImage {
  const _$ExportImageImpl({required this.preset, required this.quality});

  @override
  final ExportPreset preset;
  @override
  final ExportQuality quality;

  @override
  String toString() {
    return 'EditorEvent.exportImage(preset: $preset, quality: $quality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportImageImpl &&
            (identical(other.preset, preset) || other.preset == preset) &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preset, quality);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportImageImplCopyWith<_$ExportImageImpl> get copyWith =>
      __$$ExportImageImplCopyWithImpl<_$ExportImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return exportImage(preset, quality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return exportImage?.call(preset, quality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (exportImage != null) {
      return exportImage(preset, quality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return exportImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return exportImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (exportImage != null) {
      return exportImage(this);
    }
    return orElse();
  }
}

abstract class ExportImage implements EditorEvent {
  const factory ExportImage({
    required final ExportPreset preset,
    required final ExportQuality quality,
  }) = _$ExportImageImpl;

  ExportPreset get preset;
  ExportQuality get quality;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportImageImplCopyWith<_$ExportImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyBrushStrokeImplCopyWith<$Res> {
  factory _$$ApplyBrushStrokeImplCopyWith(
    _$ApplyBrushStrokeImpl value,
    $Res Function(_$ApplyBrushStrokeImpl) then,
  ) = __$$ApplyBrushStrokeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int x, int y, int brushSize, bool eraseMode});
}

/// @nodoc
class __$$ApplyBrushStrokeImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$ApplyBrushStrokeImpl>
    implements _$$ApplyBrushStrokeImplCopyWith<$Res> {
  __$$ApplyBrushStrokeImplCopyWithImpl(
    _$ApplyBrushStrokeImpl _value,
    $Res Function(_$ApplyBrushStrokeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? brushSize = null,
    Object? eraseMode = null,
  }) {
    return _then(
      _$ApplyBrushStrokeImpl(
        x: null == x
            ? _value.x
            : x // ignore: cast_nullable_to_non_nullable
                  as int,
        y: null == y
            ? _value.y
            : y // ignore: cast_nullable_to_non_nullable
                  as int,
        brushSize: null == brushSize
            ? _value.brushSize
            : brushSize // ignore: cast_nullable_to_non_nullable
                  as int,
        eraseMode: null == eraseMode
            ? _value.eraseMode
            : eraseMode // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ApplyBrushStrokeImpl implements ApplyBrushStroke {
  const _$ApplyBrushStrokeImpl({
    required this.x,
    required this.y,
    required this.brushSize,
    required this.eraseMode,
  });

  @override
  final int x;
  @override
  final int y;
  @override
  final int brushSize;
  @override
  final bool eraseMode;

  @override
  String toString() {
    return 'EditorEvent.applyBrushStroke(x: $x, y: $y, brushSize: $brushSize, eraseMode: $eraseMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyBrushStrokeImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.brushSize, brushSize) ||
                other.brushSize == brushSize) &&
            (identical(other.eraseMode, eraseMode) ||
                other.eraseMode == eraseMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, brushSize, eraseMode);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyBrushStrokeImplCopyWith<_$ApplyBrushStrokeImpl> get copyWith =>
      __$$ApplyBrushStrokeImplCopyWithImpl<_$ApplyBrushStrokeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return applyBrushStroke(x, y, brushSize, eraseMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return applyBrushStroke?.call(x, y, brushSize, eraseMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (applyBrushStroke != null) {
      return applyBrushStroke(x, y, brushSize, eraseMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return applyBrushStroke(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return applyBrushStroke?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (applyBrushStroke != null) {
      return applyBrushStroke(this);
    }
    return orElse();
  }
}

abstract class ApplyBrushStroke implements EditorEvent {
  const factory ApplyBrushStroke({
    required final int x,
    required final int y,
    required final int brushSize,
    required final bool eraseMode,
  }) = _$ApplyBrushStrokeImpl;

  int get x;
  int get y;
  int get brushSize;
  bool get eraseMode;

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplyBrushStrokeImplCopyWith<_$ApplyBrushStrokeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UndoMaskEditImplCopyWith<$Res> {
  factory _$$UndoMaskEditImplCopyWith(
    _$UndoMaskEditImpl value,
    $Res Function(_$UndoMaskEditImpl) then,
  ) = __$$UndoMaskEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UndoMaskEditImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$UndoMaskEditImpl>
    implements _$$UndoMaskEditImplCopyWith<$Res> {
  __$$UndoMaskEditImplCopyWithImpl(
    _$UndoMaskEditImpl _value,
    $Res Function(_$UndoMaskEditImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UndoMaskEditImpl implements UndoMaskEdit {
  const _$UndoMaskEditImpl();

  @override
  String toString() {
    return 'EditorEvent.undoMaskEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UndoMaskEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return undoMaskEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return undoMaskEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (undoMaskEdit != null) {
      return undoMaskEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return undoMaskEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return undoMaskEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (undoMaskEdit != null) {
      return undoMaskEdit(this);
    }
    return orElse();
  }
}

abstract class UndoMaskEdit implements EditorEvent {
  const factory UndoMaskEdit() = _$UndoMaskEditImpl;
}

/// @nodoc
abstract class _$$RedoMaskEditImplCopyWith<$Res> {
  factory _$$RedoMaskEditImplCopyWith(
    _$RedoMaskEditImpl value,
    $Res Function(_$RedoMaskEditImpl) then,
  ) = __$$RedoMaskEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RedoMaskEditImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$RedoMaskEditImpl>
    implements _$$RedoMaskEditImplCopyWith<$Res> {
  __$$RedoMaskEditImplCopyWithImpl(
    _$RedoMaskEditImpl _value,
    $Res Function(_$RedoMaskEditImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RedoMaskEditImpl implements RedoMaskEdit {
  const _$RedoMaskEditImpl();

  @override
  String toString() {
    return 'EditorEvent.redoMaskEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RedoMaskEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) loadImage,
    required TResult Function(bool fromCamera) pickImage,
    required TResult Function() pickBackgroundImage,
    required TResult Function() segmentPerson,
    required TResult Function(EditorSettings settings) updateSettings,
    required TResult Function(BackgroundStyle background) updateBackground,
    required TResult Function(FrameShape frameShape) updateFrameShape,
    required TResult Function() generatePreview,
    required TResult Function(ExportPreset preset, ExportQuality quality)
    exportImage,
    required TResult Function(int x, int y, int brushSize, bool eraseMode)
    applyBrushStroke,
    required TResult Function() undoMaskEdit,
    required TResult Function() redoMaskEdit,
  }) {
    return redoMaskEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? loadImage,
    TResult? Function(bool fromCamera)? pickImage,
    TResult? Function()? pickBackgroundImage,
    TResult? Function()? segmentPerson,
    TResult? Function(EditorSettings settings)? updateSettings,
    TResult? Function(BackgroundStyle background)? updateBackground,
    TResult? Function(FrameShape frameShape)? updateFrameShape,
    TResult? Function()? generatePreview,
    TResult? Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult? Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult? Function()? undoMaskEdit,
    TResult? Function()? redoMaskEdit,
  }) {
    return redoMaskEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? loadImage,
    TResult Function(bool fromCamera)? pickImage,
    TResult Function()? pickBackgroundImage,
    TResult Function()? segmentPerson,
    TResult Function(EditorSettings settings)? updateSettings,
    TResult Function(BackgroundStyle background)? updateBackground,
    TResult Function(FrameShape frameShape)? updateFrameShape,
    TResult Function()? generatePreview,
    TResult Function(ExportPreset preset, ExportQuality quality)? exportImage,
    TResult Function(int x, int y, int brushSize, bool eraseMode)?
    applyBrushStroke,
    TResult Function()? undoMaskEdit,
    TResult Function()? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (redoMaskEdit != null) {
      return redoMaskEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(PickBackgroundImage value) pickBackgroundImage,
    required TResult Function(SegmentPerson value) segmentPerson,
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(UpdateBackground value) updateBackground,
    required TResult Function(UpdateFrameShape value) updateFrameShape,
    required TResult Function(GeneratePreview value) generatePreview,
    required TResult Function(ExportImage value) exportImage,
    required TResult Function(ApplyBrushStroke value) applyBrushStroke,
    required TResult Function(UndoMaskEdit value) undoMaskEdit,
    required TResult Function(RedoMaskEdit value) redoMaskEdit,
  }) {
    return redoMaskEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadImage value)? loadImage,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult? Function(SegmentPerson value)? segmentPerson,
    TResult? Function(UpdateSettings value)? updateSettings,
    TResult? Function(UpdateBackground value)? updateBackground,
    TResult? Function(UpdateFrameShape value)? updateFrameShape,
    TResult? Function(GeneratePreview value)? generatePreview,
    TResult? Function(ExportImage value)? exportImage,
    TResult? Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult? Function(UndoMaskEdit value)? undoMaskEdit,
    TResult? Function(RedoMaskEdit value)? redoMaskEdit,
  }) {
    return redoMaskEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadImage value)? loadImage,
    TResult Function(PickImage value)? pickImage,
    TResult Function(PickBackgroundImage value)? pickBackgroundImage,
    TResult Function(SegmentPerson value)? segmentPerson,
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(UpdateBackground value)? updateBackground,
    TResult Function(UpdateFrameShape value)? updateFrameShape,
    TResult Function(GeneratePreview value)? generatePreview,
    TResult Function(ExportImage value)? exportImage,
    TResult Function(ApplyBrushStroke value)? applyBrushStroke,
    TResult Function(UndoMaskEdit value)? undoMaskEdit,
    TResult Function(RedoMaskEdit value)? redoMaskEdit,
    required TResult orElse(),
  }) {
    if (redoMaskEdit != null) {
      return redoMaskEdit(this);
    }
    return orElse();
  }
}

abstract class RedoMaskEdit implements EditorEvent {
  const factory RedoMaskEdit() = _$RedoMaskEditImpl;
}
