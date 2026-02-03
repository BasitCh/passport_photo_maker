// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EditorSettings {
  BackgroundStyle get background => throw _privateConstructorUsedError;
  FrameShape get frameShape => throw _privateConstructorUsedError;
  CutoutSettings get cutout => throw _privateConstructorUsedError;
  OutlineSettings get outline => throw _privateConstructorUsedError;
  GlowSettings get glow => throw _privateConstructorUsedError;
  ShadowSettings get shadow => throw _privateConstructorUsedError;
  EnhanceSettings get enhance => throw _privateConstructorUsedError;

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorSettingsCopyWith<EditorSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorSettingsCopyWith<$Res> {
  factory $EditorSettingsCopyWith(
    EditorSettings value,
    $Res Function(EditorSettings) then,
  ) = _$EditorSettingsCopyWithImpl<$Res, EditorSettings>;
  @useResult
  $Res call({
    BackgroundStyle background,
    FrameShape frameShape,
    CutoutSettings cutout,
    OutlineSettings outline,
    GlowSettings glow,
    ShadowSettings shadow,
    EnhanceSettings enhance,
  });

  $BackgroundStyleCopyWith<$Res> get background;
  $CutoutSettingsCopyWith<$Res> get cutout;
  $OutlineSettingsCopyWith<$Res> get outline;
  $GlowSettingsCopyWith<$Res> get glow;
  $ShadowSettingsCopyWith<$Res> get shadow;
  $EnhanceSettingsCopyWith<$Res> get enhance;
}

/// @nodoc
class _$EditorSettingsCopyWithImpl<$Res, $Val extends EditorSettings>
    implements $EditorSettingsCopyWith<$Res> {
  _$EditorSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? background = null,
    Object? frameShape = null,
    Object? cutout = null,
    Object? outline = null,
    Object? glow = null,
    Object? shadow = null,
    Object? enhance = null,
  }) {
    return _then(
      _value.copyWith(
            background: null == background
                ? _value.background
                : background // ignore: cast_nullable_to_non_nullable
                      as BackgroundStyle,
            frameShape: null == frameShape
                ? _value.frameShape
                : frameShape // ignore: cast_nullable_to_non_nullable
                      as FrameShape,
            cutout: null == cutout
                ? _value.cutout
                : cutout // ignore: cast_nullable_to_non_nullable
                      as CutoutSettings,
            outline: null == outline
                ? _value.outline
                : outline // ignore: cast_nullable_to_non_nullable
                      as OutlineSettings,
            glow: null == glow
                ? _value.glow
                : glow // ignore: cast_nullable_to_non_nullable
                      as GlowSettings,
            shadow: null == shadow
                ? _value.shadow
                : shadow // ignore: cast_nullable_to_non_nullable
                      as ShadowSettings,
            enhance: null == enhance
                ? _value.enhance
                : enhance // ignore: cast_nullable_to_non_nullable
                      as EnhanceSettings,
          )
          as $Val,
    );
  }

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundStyleCopyWith<$Res> get background {
    return $BackgroundStyleCopyWith<$Res>(_value.background, (value) {
      return _then(_value.copyWith(background: value) as $Val);
    });
  }

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CutoutSettingsCopyWith<$Res> get cutout {
    return $CutoutSettingsCopyWith<$Res>(_value.cutout, (value) {
      return _then(_value.copyWith(cutout: value) as $Val);
    });
  }

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineSettingsCopyWith<$Res> get outline {
    return $OutlineSettingsCopyWith<$Res>(_value.outline, (value) {
      return _then(_value.copyWith(outline: value) as $Val);
    });
  }

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GlowSettingsCopyWith<$Res> get glow {
    return $GlowSettingsCopyWith<$Res>(_value.glow, (value) {
      return _then(_value.copyWith(glow: value) as $Val);
    });
  }

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShadowSettingsCopyWith<$Res> get shadow {
    return $ShadowSettingsCopyWith<$Res>(_value.shadow, (value) {
      return _then(_value.copyWith(shadow: value) as $Val);
    });
  }

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnhanceSettingsCopyWith<$Res> get enhance {
    return $EnhanceSettingsCopyWith<$Res>(_value.enhance, (value) {
      return _then(_value.copyWith(enhance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditorSettingsImplCopyWith<$Res>
    implements $EditorSettingsCopyWith<$Res> {
  factory _$$EditorSettingsImplCopyWith(
    _$EditorSettingsImpl value,
    $Res Function(_$EditorSettingsImpl) then,
  ) = __$$EditorSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    BackgroundStyle background,
    FrameShape frameShape,
    CutoutSettings cutout,
    OutlineSettings outline,
    GlowSettings glow,
    ShadowSettings shadow,
    EnhanceSettings enhance,
  });

  @override
  $BackgroundStyleCopyWith<$Res> get background;
  @override
  $CutoutSettingsCopyWith<$Res> get cutout;
  @override
  $OutlineSettingsCopyWith<$Res> get outline;
  @override
  $GlowSettingsCopyWith<$Res> get glow;
  @override
  $ShadowSettingsCopyWith<$Res> get shadow;
  @override
  $EnhanceSettingsCopyWith<$Res> get enhance;
}

/// @nodoc
class __$$EditorSettingsImplCopyWithImpl<$Res>
    extends _$EditorSettingsCopyWithImpl<$Res, _$EditorSettingsImpl>
    implements _$$EditorSettingsImplCopyWith<$Res> {
  __$$EditorSettingsImplCopyWithImpl(
    _$EditorSettingsImpl _value,
    $Res Function(_$EditorSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? background = null,
    Object? frameShape = null,
    Object? cutout = null,
    Object? outline = null,
    Object? glow = null,
    Object? shadow = null,
    Object? enhance = null,
  }) {
    return _then(
      _$EditorSettingsImpl(
        background: null == background
            ? _value.background
            : background // ignore: cast_nullable_to_non_nullable
                  as BackgroundStyle,
        frameShape: null == frameShape
            ? _value.frameShape
            : frameShape // ignore: cast_nullable_to_non_nullable
                  as FrameShape,
        cutout: null == cutout
            ? _value.cutout
            : cutout // ignore: cast_nullable_to_non_nullable
                  as CutoutSettings,
        outline: null == outline
            ? _value.outline
            : outline // ignore: cast_nullable_to_non_nullable
                  as OutlineSettings,
        glow: null == glow
            ? _value.glow
            : glow // ignore: cast_nullable_to_non_nullable
                  as GlowSettings,
        shadow: null == shadow
            ? _value.shadow
            : shadow // ignore: cast_nullable_to_non_nullable
                  as ShadowSettings,
        enhance: null == enhance
            ? _value.enhance
            : enhance // ignore: cast_nullable_to_non_nullable
                  as EnhanceSettings,
      ),
    );
  }
}

/// @nodoc

class _$EditorSettingsImpl implements _EditorSettings {
  const _$EditorSettingsImpl({
    required this.background,
    required this.frameShape,
    required this.cutout,
    required this.outline,
    required this.glow,
    required this.shadow,
    required this.enhance,
  });

  @override
  final BackgroundStyle background;
  @override
  final FrameShape frameShape;
  @override
  final CutoutSettings cutout;
  @override
  final OutlineSettings outline;
  @override
  final GlowSettings glow;
  @override
  final ShadowSettings shadow;
  @override
  final EnhanceSettings enhance;

  @override
  String toString() {
    return 'EditorSettings(background: $background, frameShape: $frameShape, cutout: $cutout, outline: $outline, glow: $glow, shadow: $shadow, enhance: $enhance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorSettingsImpl &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.frameShape, frameShape) ||
                other.frameShape == frameShape) &&
            (identical(other.cutout, cutout) || other.cutout == cutout) &&
            (identical(other.outline, outline) || other.outline == outline) &&
            (identical(other.glow, glow) || other.glow == glow) &&
            (identical(other.shadow, shadow) || other.shadow == shadow) &&
            (identical(other.enhance, enhance) || other.enhance == enhance));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    background,
    frameShape,
    cutout,
    outline,
    glow,
    shadow,
    enhance,
  );

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorSettingsImplCopyWith<_$EditorSettingsImpl> get copyWith =>
      __$$EditorSettingsImplCopyWithImpl<_$EditorSettingsImpl>(
        this,
        _$identity,
      );
}

abstract class _EditorSettings implements EditorSettings {
  const factory _EditorSettings({
    required final BackgroundStyle background,
    required final FrameShape frameShape,
    required final CutoutSettings cutout,
    required final OutlineSettings outline,
    required final GlowSettings glow,
    required final ShadowSettings shadow,
    required final EnhanceSettings enhance,
  }) = _$EditorSettingsImpl;

  @override
  BackgroundStyle get background;
  @override
  FrameShape get frameShape;
  @override
  CutoutSettings get cutout;
  @override
  OutlineSettings get outline;
  @override
  GlowSettings get glow;
  @override
  ShadowSettings get shadow;
  @override
  EnhanceSettings get enhance;

  /// Create a copy of EditorSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorSettingsImplCopyWith<_$EditorSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BackgroundStyle {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String label, Color color) solid,
    required TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )
    gradient,
    required TResult Function(
      String id,
      String label,
      String pack,
      String assetPath,
    )
    image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String label, Color color)? solid,
    TResult? Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult? Function(String id, String label, String pack, String assetPath)?
    image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String label, Color color)? solid,
    TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult Function(String id, String label, String pack, String assetPath)?
    image,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SolidBackground value) solid,
    required TResult Function(GradientBackground value) gradient,
    required TResult Function(ImageBackground value) image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SolidBackground value)? solid,
    TResult? Function(GradientBackground value)? gradient,
    TResult? Function(ImageBackground value)? image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SolidBackground value)? solid,
    TResult Function(GradientBackground value)? gradient,
    TResult Function(ImageBackground value)? image,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundStyleCopyWith<BackgroundStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundStyleCopyWith<$Res> {
  factory $BackgroundStyleCopyWith(
    BackgroundStyle value,
    $Res Function(BackgroundStyle) then,
  ) = _$BackgroundStyleCopyWithImpl<$Res, BackgroundStyle>;
  @useResult
  $Res call({String id, String label});
}

/// @nodoc
class _$BackgroundStyleCopyWithImpl<$Res, $Val extends BackgroundStyle>
    implements $BackgroundStyleCopyWith<$Res> {
  _$BackgroundStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? label = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SolidBackgroundImplCopyWith<$Res>
    implements $BackgroundStyleCopyWith<$Res> {
  factory _$$SolidBackgroundImplCopyWith(
    _$SolidBackgroundImpl value,
    $Res Function(_$SolidBackgroundImpl) then,
  ) = __$$SolidBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, Color color});
}

/// @nodoc
class __$$SolidBackgroundImplCopyWithImpl<$Res>
    extends _$BackgroundStyleCopyWithImpl<$Res, _$SolidBackgroundImpl>
    implements _$$SolidBackgroundImplCopyWith<$Res> {
  __$$SolidBackgroundImplCopyWithImpl(
    _$SolidBackgroundImpl _value,
    $Res Function(_$SolidBackgroundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? label = null, Object? color = null}) {
    return _then(
      _$SolidBackgroundImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$SolidBackgroundImpl implements SolidBackground {
  const _$SolidBackgroundImpl({
    required this.id,
    required this.label,
    required this.color,
  });

  @override
  final String id;
  @override
  final String label;
  @override
  final Color color;

  @override
  String toString() {
    return 'BackgroundStyle.solid(id: $id, label: $label, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolidBackgroundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, color);

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolidBackgroundImplCopyWith<_$SolidBackgroundImpl> get copyWith =>
      __$$SolidBackgroundImplCopyWithImpl<_$SolidBackgroundImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String label, Color color) solid,
    required TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )
    gradient,
    required TResult Function(
      String id,
      String label,
      String pack,
      String assetPath,
    )
    image,
  }) {
    return solid(id, label, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String label, Color color)? solid,
    TResult? Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult? Function(String id, String label, String pack, String assetPath)?
    image,
  }) {
    return solid?.call(id, label, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String label, Color color)? solid,
    TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult Function(String id, String label, String pack, String assetPath)?
    image,
    required TResult orElse(),
  }) {
    if (solid != null) {
      return solid(id, label, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SolidBackground value) solid,
    required TResult Function(GradientBackground value) gradient,
    required TResult Function(ImageBackground value) image,
  }) {
    return solid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SolidBackground value)? solid,
    TResult? Function(GradientBackground value)? gradient,
    TResult? Function(ImageBackground value)? image,
  }) {
    return solid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SolidBackground value)? solid,
    TResult Function(GradientBackground value)? gradient,
    TResult Function(ImageBackground value)? image,
    required TResult orElse(),
  }) {
    if (solid != null) {
      return solid(this);
    }
    return orElse();
  }
}

abstract class SolidBackground implements BackgroundStyle {
  const factory SolidBackground({
    required final String id,
    required final String label,
    required final Color color,
  }) = _$SolidBackgroundImpl;

  @override
  String get id;
  @override
  String get label;
  Color get color;

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolidBackgroundImplCopyWith<_$SolidBackgroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GradientBackgroundImplCopyWith<$Res>
    implements $BackgroundStyleCopyWith<$Res> {
  factory _$$GradientBackgroundImplCopyWith(
    _$GradientBackgroundImpl value,
    $Res Function(_$GradientBackgroundImpl) then,
  ) = __$$GradientBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String label,
    Color colorA,
    Color colorB,
    GradientDirection direction,
  });
}

/// @nodoc
class __$$GradientBackgroundImplCopyWithImpl<$Res>
    extends _$BackgroundStyleCopyWithImpl<$Res, _$GradientBackgroundImpl>
    implements _$$GradientBackgroundImplCopyWith<$Res> {
  __$$GradientBackgroundImplCopyWithImpl(
    _$GradientBackgroundImpl _value,
    $Res Function(_$GradientBackgroundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? colorA = null,
    Object? colorB = null,
    Object? direction = null,
  }) {
    return _then(
      _$GradientBackgroundImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        colorA: null == colorA
            ? _value.colorA
            : colorA // ignore: cast_nullable_to_non_nullable
                  as Color,
        colorB: null == colorB
            ? _value.colorB
            : colorB // ignore: cast_nullable_to_non_nullable
                  as Color,
        direction: null == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as GradientDirection,
      ),
    );
  }
}

/// @nodoc

class _$GradientBackgroundImpl implements GradientBackground {
  const _$GradientBackgroundImpl({
    required this.id,
    required this.label,
    required this.colorA,
    required this.colorB,
    required this.direction,
  });

  @override
  final String id;
  @override
  final String label;
  @override
  final Color colorA;
  @override
  final Color colorB;
  @override
  final GradientDirection direction;

  @override
  String toString() {
    return 'BackgroundStyle.gradient(id: $id, label: $label, colorA: $colorA, colorB: $colorB, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradientBackgroundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.colorA, colorA) || other.colorA == colorA) &&
            (identical(other.colorB, colorB) || other.colorB == colorB) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, colorA, colorB, direction);

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GradientBackgroundImplCopyWith<_$GradientBackgroundImpl> get copyWith =>
      __$$GradientBackgroundImplCopyWithImpl<_$GradientBackgroundImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String label, Color color) solid,
    required TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )
    gradient,
    required TResult Function(
      String id,
      String label,
      String pack,
      String assetPath,
    )
    image,
  }) {
    return gradient(id, label, colorA, colorB, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String label, Color color)? solid,
    TResult? Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult? Function(String id, String label, String pack, String assetPath)?
    image,
  }) {
    return gradient?.call(id, label, colorA, colorB, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String label, Color color)? solid,
    TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult Function(String id, String label, String pack, String assetPath)?
    image,
    required TResult orElse(),
  }) {
    if (gradient != null) {
      return gradient(id, label, colorA, colorB, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SolidBackground value) solid,
    required TResult Function(GradientBackground value) gradient,
    required TResult Function(ImageBackground value) image,
  }) {
    return gradient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SolidBackground value)? solid,
    TResult? Function(GradientBackground value)? gradient,
    TResult? Function(ImageBackground value)? image,
  }) {
    return gradient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SolidBackground value)? solid,
    TResult Function(GradientBackground value)? gradient,
    TResult Function(ImageBackground value)? image,
    required TResult orElse(),
  }) {
    if (gradient != null) {
      return gradient(this);
    }
    return orElse();
  }
}

abstract class GradientBackground implements BackgroundStyle {
  const factory GradientBackground({
    required final String id,
    required final String label,
    required final Color colorA,
    required final Color colorB,
    required final GradientDirection direction,
  }) = _$GradientBackgroundImpl;

  @override
  String get id;
  @override
  String get label;
  Color get colorA;
  Color get colorB;
  GradientDirection get direction;

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GradientBackgroundImplCopyWith<_$GradientBackgroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageBackgroundImplCopyWith<$Res>
    implements $BackgroundStyleCopyWith<$Res> {
  factory _$$ImageBackgroundImplCopyWith(
    _$ImageBackgroundImpl value,
    $Res Function(_$ImageBackgroundImpl) then,
  ) = __$$ImageBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String pack, String assetPath});
}

/// @nodoc
class __$$ImageBackgroundImplCopyWithImpl<$Res>
    extends _$BackgroundStyleCopyWithImpl<$Res, _$ImageBackgroundImpl>
    implements _$$ImageBackgroundImplCopyWith<$Res> {
  __$$ImageBackgroundImplCopyWithImpl(
    _$ImageBackgroundImpl _value,
    $Res Function(_$ImageBackgroundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? pack = null,
    Object? assetPath = null,
  }) {
    return _then(
      _$ImageBackgroundImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        pack: null == pack
            ? _value.pack
            : pack // ignore: cast_nullable_to_non_nullable
                  as String,
        assetPath: null == assetPath
            ? _value.assetPath
            : assetPath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ImageBackgroundImpl implements ImageBackground {
  const _$ImageBackgroundImpl({
    required this.id,
    required this.label,
    required this.pack,
    required this.assetPath,
  });

  @override
  final String id;
  @override
  final String label;
  @override
  final String pack;
  @override
  final String assetPath;

  @override
  String toString() {
    return 'BackgroundStyle.image(id: $id, label: $label, pack: $pack, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageBackgroundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.pack, pack) || other.pack == pack) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, pack, assetPath);

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageBackgroundImplCopyWith<_$ImageBackgroundImpl> get copyWith =>
      __$$ImageBackgroundImplCopyWithImpl<_$ImageBackgroundImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String label, Color color) solid,
    required TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )
    gradient,
    required TResult Function(
      String id,
      String label,
      String pack,
      String assetPath,
    )
    image,
  }) {
    return image(id, label, pack, assetPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String label, Color color)? solid,
    TResult? Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult? Function(String id, String label, String pack, String assetPath)?
    image,
  }) {
    return image?.call(id, label, pack, assetPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String label, Color color)? solid,
    TResult Function(
      String id,
      String label,
      Color colorA,
      Color colorB,
      GradientDirection direction,
    )?
    gradient,
    TResult Function(String id, String label, String pack, String assetPath)?
    image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(id, label, pack, assetPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SolidBackground value) solid,
    required TResult Function(GradientBackground value) gradient,
    required TResult Function(ImageBackground value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SolidBackground value)? solid,
    TResult? Function(GradientBackground value)? gradient,
    TResult? Function(ImageBackground value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SolidBackground value)? solid,
    TResult Function(GradientBackground value)? gradient,
    TResult Function(ImageBackground value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class ImageBackground implements BackgroundStyle {
  const factory ImageBackground({
    required final String id,
    required final String label,
    required final String pack,
    required final String assetPath,
  }) = _$ImageBackgroundImpl;

  @override
  String get id;
  @override
  String get label;
  String get pack;
  String get assetPath;

  /// Create a copy of BackgroundStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageBackgroundImplCopyWith<_$ImageBackgroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CutoutSettings {
  double get edgeSmooth => throw _privateConstructorUsedError;
  double get edgeFeather => throw _privateConstructorUsedError;
  bool get decontaminate => throw _privateConstructorUsedError;

  /// Create a copy of CutoutSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CutoutSettingsCopyWith<CutoutSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CutoutSettingsCopyWith<$Res> {
  factory $CutoutSettingsCopyWith(
    CutoutSettings value,
    $Res Function(CutoutSettings) then,
  ) = _$CutoutSettingsCopyWithImpl<$Res, CutoutSettings>;
  @useResult
  $Res call({double edgeSmooth, double edgeFeather, bool decontaminate});
}

/// @nodoc
class _$CutoutSettingsCopyWithImpl<$Res, $Val extends CutoutSettings>
    implements $CutoutSettingsCopyWith<$Res> {
  _$CutoutSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CutoutSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edgeSmooth = null,
    Object? edgeFeather = null,
    Object? decontaminate = null,
  }) {
    return _then(
      _value.copyWith(
            edgeSmooth: null == edgeSmooth
                ? _value.edgeSmooth
                : edgeSmooth // ignore: cast_nullable_to_non_nullable
                      as double,
            edgeFeather: null == edgeFeather
                ? _value.edgeFeather
                : edgeFeather // ignore: cast_nullable_to_non_nullable
                      as double,
            decontaminate: null == decontaminate
                ? _value.decontaminate
                : decontaminate // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CutoutSettingsImplCopyWith<$Res>
    implements $CutoutSettingsCopyWith<$Res> {
  factory _$$CutoutSettingsImplCopyWith(
    _$CutoutSettingsImpl value,
    $Res Function(_$CutoutSettingsImpl) then,
  ) = __$$CutoutSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double edgeSmooth, double edgeFeather, bool decontaminate});
}

/// @nodoc
class __$$CutoutSettingsImplCopyWithImpl<$Res>
    extends _$CutoutSettingsCopyWithImpl<$Res, _$CutoutSettingsImpl>
    implements _$$CutoutSettingsImplCopyWith<$Res> {
  __$$CutoutSettingsImplCopyWithImpl(
    _$CutoutSettingsImpl _value,
    $Res Function(_$CutoutSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CutoutSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edgeSmooth = null,
    Object? edgeFeather = null,
    Object? decontaminate = null,
  }) {
    return _then(
      _$CutoutSettingsImpl(
        edgeSmooth: null == edgeSmooth
            ? _value.edgeSmooth
            : edgeSmooth // ignore: cast_nullable_to_non_nullable
                  as double,
        edgeFeather: null == edgeFeather
            ? _value.edgeFeather
            : edgeFeather // ignore: cast_nullable_to_non_nullable
                  as double,
        decontaminate: null == decontaminate
            ? _value.decontaminate
            : decontaminate // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CutoutSettingsImpl implements _CutoutSettings {
  const _$CutoutSettingsImpl({
    this.edgeSmooth = 50.0,
    this.edgeFeather = 10.0,
    this.decontaminate = false,
  });

  @override
  @JsonKey()
  final double edgeSmooth;
  @override
  @JsonKey()
  final double edgeFeather;
  @override
  @JsonKey()
  final bool decontaminate;

  @override
  String toString() {
    return 'CutoutSettings(edgeSmooth: $edgeSmooth, edgeFeather: $edgeFeather, decontaminate: $decontaminate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CutoutSettingsImpl &&
            (identical(other.edgeSmooth, edgeSmooth) ||
                other.edgeSmooth == edgeSmooth) &&
            (identical(other.edgeFeather, edgeFeather) ||
                other.edgeFeather == edgeFeather) &&
            (identical(other.decontaminate, decontaminate) ||
                other.decontaminate == decontaminate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, edgeSmooth, edgeFeather, decontaminate);

  /// Create a copy of CutoutSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CutoutSettingsImplCopyWith<_$CutoutSettingsImpl> get copyWith =>
      __$$CutoutSettingsImplCopyWithImpl<_$CutoutSettingsImpl>(
        this,
        _$identity,
      );
}

abstract class _CutoutSettings implements CutoutSettings {
  const factory _CutoutSettings({
    final double edgeSmooth,
    final double edgeFeather,
    final bool decontaminate,
  }) = _$CutoutSettingsImpl;

  @override
  double get edgeSmooth;
  @override
  double get edgeFeather;
  @override
  bool get decontaminate;

  /// Create a copy of CutoutSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CutoutSettingsImplCopyWith<_$CutoutSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OutlineSettings {
  bool get enabled => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  double get thickness => throw _privateConstructorUsedError;
  double get blur => throw _privateConstructorUsedError;

  /// Create a copy of OutlineSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutlineSettingsCopyWith<OutlineSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutlineSettingsCopyWith<$Res> {
  factory $OutlineSettingsCopyWith(
    OutlineSettings value,
    $Res Function(OutlineSettings) then,
  ) = _$OutlineSettingsCopyWithImpl<$Res, OutlineSettings>;
  @useResult
  $Res call({bool enabled, Color color, double thickness, double blur});
}

/// @nodoc
class _$OutlineSettingsCopyWithImpl<$Res, $Val extends OutlineSettings>
    implements $OutlineSettingsCopyWith<$Res> {
  _$OutlineSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutlineSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? color = null,
    Object? thickness = null,
    Object? blur = null,
  }) {
    return _then(
      _value.copyWith(
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as Color,
            thickness: null == thickness
                ? _value.thickness
                : thickness // ignore: cast_nullable_to_non_nullable
                      as double,
            blur: null == blur
                ? _value.blur
                : blur // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OutlineSettingsImplCopyWith<$Res>
    implements $OutlineSettingsCopyWith<$Res> {
  factory _$$OutlineSettingsImplCopyWith(
    _$OutlineSettingsImpl value,
    $Res Function(_$OutlineSettingsImpl) then,
  ) = __$$OutlineSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, Color color, double thickness, double blur});
}

/// @nodoc
class __$$OutlineSettingsImplCopyWithImpl<$Res>
    extends _$OutlineSettingsCopyWithImpl<$Res, _$OutlineSettingsImpl>
    implements _$$OutlineSettingsImplCopyWith<$Res> {
  __$$OutlineSettingsImplCopyWithImpl(
    _$OutlineSettingsImpl _value,
    $Res Function(_$OutlineSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OutlineSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? color = null,
    Object? thickness = null,
    Object? blur = null,
  }) {
    return _then(
      _$OutlineSettingsImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color,
        thickness: null == thickness
            ? _value.thickness
            : thickness // ignore: cast_nullable_to_non_nullable
                  as double,
        blur: null == blur
            ? _value.blur
            : blur // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$OutlineSettingsImpl implements _OutlineSettings {
  const _$OutlineSettingsImpl({
    this.enabled = false,
    this.color = const Color(0xFFFFFFFF),
    this.thickness = 2.0,
    this.blur = 0.0,
  });

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final Color color;
  @override
  @JsonKey()
  final double thickness;
  @override
  @JsonKey()
  final double blur;

  @override
  String toString() {
    return 'OutlineSettings(enabled: $enabled, color: $color, thickness: $thickness, blur: $blur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutlineSettingsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.blur, blur) || other.blur == blur));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled, color, thickness, blur);

  /// Create a copy of OutlineSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutlineSettingsImplCopyWith<_$OutlineSettingsImpl> get copyWith =>
      __$$OutlineSettingsImplCopyWithImpl<_$OutlineSettingsImpl>(
        this,
        _$identity,
      );
}

abstract class _OutlineSettings implements OutlineSettings {
  const factory _OutlineSettings({
    final bool enabled,
    final Color color,
    final double thickness,
    final double blur,
  }) = _$OutlineSettingsImpl;

  @override
  bool get enabled;
  @override
  Color get color;
  @override
  double get thickness;
  @override
  double get blur;

  /// Create a copy of OutlineSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutlineSettingsImplCopyWith<_$OutlineSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GlowSettings {
  bool get enabled => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  double get intensity => throw _privateConstructorUsedError;
  double get spread => throw _privateConstructorUsedError;

  /// Create a copy of GlowSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlowSettingsCopyWith<GlowSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlowSettingsCopyWith<$Res> {
  factory $GlowSettingsCopyWith(
    GlowSettings value,
    $Res Function(GlowSettings) then,
  ) = _$GlowSettingsCopyWithImpl<$Res, GlowSettings>;
  @useResult
  $Res call({bool enabled, Color color, double intensity, double spread});
}

/// @nodoc
class _$GlowSettingsCopyWithImpl<$Res, $Val extends GlowSettings>
    implements $GlowSettingsCopyWith<$Res> {
  _$GlowSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlowSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? color = null,
    Object? intensity = null,
    Object? spread = null,
  }) {
    return _then(
      _value.copyWith(
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as Color,
            intensity: null == intensity
                ? _value.intensity
                : intensity // ignore: cast_nullable_to_non_nullable
                      as double,
            spread: null == spread
                ? _value.spread
                : spread // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GlowSettingsImplCopyWith<$Res>
    implements $GlowSettingsCopyWith<$Res> {
  factory _$$GlowSettingsImplCopyWith(
    _$GlowSettingsImpl value,
    $Res Function(_$GlowSettingsImpl) then,
  ) = __$$GlowSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, Color color, double intensity, double spread});
}

/// @nodoc
class __$$GlowSettingsImplCopyWithImpl<$Res>
    extends _$GlowSettingsCopyWithImpl<$Res, _$GlowSettingsImpl>
    implements _$$GlowSettingsImplCopyWith<$Res> {
  __$$GlowSettingsImplCopyWithImpl(
    _$GlowSettingsImpl _value,
    $Res Function(_$GlowSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GlowSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? color = null,
    Object? intensity = null,
    Object? spread = null,
  }) {
    return _then(
      _$GlowSettingsImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color,
        intensity: null == intensity
            ? _value.intensity
            : intensity // ignore: cast_nullable_to_non_nullable
                  as double,
        spread: null == spread
            ? _value.spread
            : spread // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$GlowSettingsImpl implements _GlowSettings {
  const _$GlowSettingsImpl({
    this.enabled = false,
    this.color = const Color(0xFFFFFFFF),
    this.intensity = 0.5,
    this.spread = 18.0,
  });

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final Color color;
  @override
  @JsonKey()
  final double intensity;
  @override
  @JsonKey()
  final double spread;

  @override
  String toString() {
    return 'GlowSettings(enabled: $enabled, color: $color, intensity: $intensity, spread: $spread)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlowSettingsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.spread, spread) || other.spread == spread));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, enabled, color, intensity, spread);

  /// Create a copy of GlowSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlowSettingsImplCopyWith<_$GlowSettingsImpl> get copyWith =>
      __$$GlowSettingsImplCopyWithImpl<_$GlowSettingsImpl>(this, _$identity);
}

abstract class _GlowSettings implements GlowSettings {
  const factory _GlowSettings({
    final bool enabled,
    final Color color,
    final double intensity,
    final double spread,
  }) = _$GlowSettingsImpl;

  @override
  bool get enabled;
  @override
  Color get color;
  @override
  double get intensity;
  @override
  double get spread;

  /// Create a copy of GlowSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlowSettingsImplCopyWith<_$GlowSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShadowSettings {
  bool get enabled => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;
  double get blur => throw _privateConstructorUsedError;
  double get offset => throw _privateConstructorUsedError;

  /// Create a copy of ShadowSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShadowSettingsCopyWith<ShadowSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShadowSettingsCopyWith<$Res> {
  factory $ShadowSettingsCopyWith(
    ShadowSettings value,
    $Res Function(ShadowSettings) then,
  ) = _$ShadowSettingsCopyWithImpl<$Res, ShadowSettings>;
  @useResult
  $Res call({bool enabled, double opacity, double blur, double offset});
}

/// @nodoc
class _$ShadowSettingsCopyWithImpl<$Res, $Val extends ShadowSettings>
    implements $ShadowSettingsCopyWith<$Res> {
  _$ShadowSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShadowSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? opacity = null,
    Object? blur = null,
    Object? offset = null,
  }) {
    return _then(
      _value.copyWith(
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            opacity: null == opacity
                ? _value.opacity
                : opacity // ignore: cast_nullable_to_non_nullable
                      as double,
            blur: null == blur
                ? _value.blur
                : blur // ignore: cast_nullable_to_non_nullable
                      as double,
            offset: null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShadowSettingsImplCopyWith<$Res>
    implements $ShadowSettingsCopyWith<$Res> {
  factory _$$ShadowSettingsImplCopyWith(
    _$ShadowSettingsImpl value,
    $Res Function(_$ShadowSettingsImpl) then,
  ) = __$$ShadowSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, double opacity, double blur, double offset});
}

/// @nodoc
class __$$ShadowSettingsImplCopyWithImpl<$Res>
    extends _$ShadowSettingsCopyWithImpl<$Res, _$ShadowSettingsImpl>
    implements _$$ShadowSettingsImplCopyWith<$Res> {
  __$$ShadowSettingsImplCopyWithImpl(
    _$ShadowSettingsImpl _value,
    $Res Function(_$ShadowSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShadowSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? opacity = null,
    Object? blur = null,
    Object? offset = null,
  }) {
    return _then(
      _$ShadowSettingsImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        opacity: null == opacity
            ? _value.opacity
            : opacity // ignore: cast_nullable_to_non_nullable
                  as double,
        blur: null == blur
            ? _value.blur
            : blur // ignore: cast_nullable_to_non_nullable
                  as double,
        offset: null == offset
            ? _value.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$ShadowSettingsImpl implements _ShadowSettings {
  const _$ShadowSettingsImpl({
    this.enabled = false,
    this.opacity = 0.3,
    this.blur = 20.0,
    this.offset = 10.0,
  });

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final double opacity;
  @override
  @JsonKey()
  final double blur;
  @override
  @JsonKey()
  final double offset;

  @override
  String toString() {
    return 'ShadowSettings(enabled: $enabled, opacity: $opacity, blur: $blur, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShadowSettingsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.blur, blur) || other.blur == blur) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled, opacity, blur, offset);

  /// Create a copy of ShadowSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShadowSettingsImplCopyWith<_$ShadowSettingsImpl> get copyWith =>
      __$$ShadowSettingsImplCopyWithImpl<_$ShadowSettingsImpl>(
        this,
        _$identity,
      );
}

abstract class _ShadowSettings implements ShadowSettings {
  const factory _ShadowSettings({
    final bool enabled,
    final double opacity,
    final double blur,
    final double offset,
  }) = _$ShadowSettingsImpl;

  @override
  bool get enabled;
  @override
  double get opacity;
  @override
  double get blur;
  @override
  double get offset;

  /// Create a copy of ShadowSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShadowSettingsImplCopyWith<_$ShadowSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnhanceSettings {
  double get brightness => throw _privateConstructorUsedError;
  double get contrast => throw _privateConstructorUsedError;
  double get sharpness => throw _privateConstructorUsedError;
  double get warmth => throw _privateConstructorUsedError;
  double get saturation => throw _privateConstructorUsedError;
  double get skinSmooth => throw _privateConstructorUsedError;
  double get clarity => throw _privateConstructorUsedError;
  double get eyeSharp => throw _privateConstructorUsedError;

  /// Create a copy of EnhanceSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnhanceSettingsCopyWith<EnhanceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnhanceSettingsCopyWith<$Res> {
  factory $EnhanceSettingsCopyWith(
    EnhanceSettings value,
    $Res Function(EnhanceSettings) then,
  ) = _$EnhanceSettingsCopyWithImpl<$Res, EnhanceSettings>;
  @useResult
  $Res call({
    double brightness,
    double contrast,
    double sharpness,
    double warmth,
    double saturation,
    double skinSmooth,
    double clarity,
    double eyeSharp,
  });
}

/// @nodoc
class _$EnhanceSettingsCopyWithImpl<$Res, $Val extends EnhanceSettings>
    implements $EnhanceSettingsCopyWith<$Res> {
  _$EnhanceSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnhanceSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
    Object? contrast = null,
    Object? sharpness = null,
    Object? warmth = null,
    Object? saturation = null,
    Object? skinSmooth = null,
    Object? clarity = null,
    Object? eyeSharp = null,
  }) {
    return _then(
      _value.copyWith(
            brightness: null == brightness
                ? _value.brightness
                : brightness // ignore: cast_nullable_to_non_nullable
                      as double,
            contrast: null == contrast
                ? _value.contrast
                : contrast // ignore: cast_nullable_to_non_nullable
                      as double,
            sharpness: null == sharpness
                ? _value.sharpness
                : sharpness // ignore: cast_nullable_to_non_nullable
                      as double,
            warmth: null == warmth
                ? _value.warmth
                : warmth // ignore: cast_nullable_to_non_nullable
                      as double,
            saturation: null == saturation
                ? _value.saturation
                : saturation // ignore: cast_nullable_to_non_nullable
                      as double,
            skinSmooth: null == skinSmooth
                ? _value.skinSmooth
                : skinSmooth // ignore: cast_nullable_to_non_nullable
                      as double,
            clarity: null == clarity
                ? _value.clarity
                : clarity // ignore: cast_nullable_to_non_nullable
                      as double,
            eyeSharp: null == eyeSharp
                ? _value.eyeSharp
                : eyeSharp // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EnhanceSettingsImplCopyWith<$Res>
    implements $EnhanceSettingsCopyWith<$Res> {
  factory _$$EnhanceSettingsImplCopyWith(
    _$EnhanceSettingsImpl value,
    $Res Function(_$EnhanceSettingsImpl) then,
  ) = __$$EnhanceSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double brightness,
    double contrast,
    double sharpness,
    double warmth,
    double saturation,
    double skinSmooth,
    double clarity,
    double eyeSharp,
  });
}

/// @nodoc
class __$$EnhanceSettingsImplCopyWithImpl<$Res>
    extends _$EnhanceSettingsCopyWithImpl<$Res, _$EnhanceSettingsImpl>
    implements _$$EnhanceSettingsImplCopyWith<$Res> {
  __$$EnhanceSettingsImplCopyWithImpl(
    _$EnhanceSettingsImpl _value,
    $Res Function(_$EnhanceSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EnhanceSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
    Object? contrast = null,
    Object? sharpness = null,
    Object? warmth = null,
    Object? saturation = null,
    Object? skinSmooth = null,
    Object? clarity = null,
    Object? eyeSharp = null,
  }) {
    return _then(
      _$EnhanceSettingsImpl(
        brightness: null == brightness
            ? _value.brightness
            : brightness // ignore: cast_nullable_to_non_nullable
                  as double,
        contrast: null == contrast
            ? _value.contrast
            : contrast // ignore: cast_nullable_to_non_nullable
                  as double,
        sharpness: null == sharpness
            ? _value.sharpness
            : sharpness // ignore: cast_nullable_to_non_nullable
                  as double,
        warmth: null == warmth
            ? _value.warmth
            : warmth // ignore: cast_nullable_to_non_nullable
                  as double,
        saturation: null == saturation
            ? _value.saturation
            : saturation // ignore: cast_nullable_to_non_nullable
                  as double,
        skinSmooth: null == skinSmooth
            ? _value.skinSmooth
            : skinSmooth // ignore: cast_nullable_to_non_nullable
                  as double,
        clarity: null == clarity
            ? _value.clarity
            : clarity // ignore: cast_nullable_to_non_nullable
                  as double,
        eyeSharp: null == eyeSharp
            ? _value.eyeSharp
            : eyeSharp // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$EnhanceSettingsImpl implements _EnhanceSettings {
  const _$EnhanceSettingsImpl({
    this.brightness = 0.0,
    this.contrast = 0.0,
    this.sharpness = 0.0,
    this.warmth = 0.0,
    this.saturation = 0.0,
    this.skinSmooth = 0.0,
    this.clarity = 0.0,
    this.eyeSharp = 0.0,
  });

  @override
  @JsonKey()
  final double brightness;
  @override
  @JsonKey()
  final double contrast;
  @override
  @JsonKey()
  final double sharpness;
  @override
  @JsonKey()
  final double warmth;
  @override
  @JsonKey()
  final double saturation;
  @override
  @JsonKey()
  final double skinSmooth;
  @override
  @JsonKey()
  final double clarity;
  @override
  @JsonKey()
  final double eyeSharp;

  @override
  String toString() {
    return 'EnhanceSettings(brightness: $brightness, contrast: $contrast, sharpness: $sharpness, warmth: $warmth, saturation: $saturation, skinSmooth: $skinSmooth, clarity: $clarity, eyeSharp: $eyeSharp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnhanceSettingsImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.contrast, contrast) ||
                other.contrast == contrast) &&
            (identical(other.sharpness, sharpness) ||
                other.sharpness == sharpness) &&
            (identical(other.warmth, warmth) || other.warmth == warmth) &&
            (identical(other.saturation, saturation) ||
                other.saturation == saturation) &&
            (identical(other.skinSmooth, skinSmooth) ||
                other.skinSmooth == skinSmooth) &&
            (identical(other.clarity, clarity) || other.clarity == clarity) &&
            (identical(other.eyeSharp, eyeSharp) ||
                other.eyeSharp == eyeSharp));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    brightness,
    contrast,
    sharpness,
    warmth,
    saturation,
    skinSmooth,
    clarity,
    eyeSharp,
  );

  /// Create a copy of EnhanceSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnhanceSettingsImplCopyWith<_$EnhanceSettingsImpl> get copyWith =>
      __$$EnhanceSettingsImplCopyWithImpl<_$EnhanceSettingsImpl>(
        this,
        _$identity,
      );
}

abstract class _EnhanceSettings implements EnhanceSettings {
  const factory _EnhanceSettings({
    final double brightness,
    final double contrast,
    final double sharpness,
    final double warmth,
    final double saturation,
    final double skinSmooth,
    final double clarity,
    final double eyeSharp,
  }) = _$EnhanceSettingsImpl;

  @override
  double get brightness;
  @override
  double get contrast;
  @override
  double get sharpness;
  @override
  double get warmth;
  @override
  double get saturation;
  @override
  double get skinSmooth;
  @override
  double get clarity;
  @override
  double get eyeSharp;

  /// Create a copy of EnhanceSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnhanceSettingsImplCopyWith<_$EnhanceSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
