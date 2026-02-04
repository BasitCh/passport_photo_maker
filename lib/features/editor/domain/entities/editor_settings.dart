import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/painting.dart';

part 'editor_settings.freezed.dart';

/// Core editor settings entity (Domain layer)
@freezed
class EditorSettings with _$EditorSettings {
  const factory EditorSettings({
    required BackgroundStyle background,
    required FrameShape frameShape,
    required CutoutSettings cutout,
    required OutlineSettings outline,
    required GlowSettings glow,
    required ShadowSettings shadow,
    required EnhanceSettings enhance,
  }) = _EditorSettings;

  factory EditorSettings.initial() => EditorSettings(
        background: BackgroundStyle.defaultGradient(),
        frameShape: FrameShape.square,
        cutout: const CutoutSettings(),
        outline: const OutlineSettings(),
        glow: const GlowSettings(),
        shadow: const ShadowSettings(),
        enhance: const EnhanceSettings(),
      );
}

@freezed
class BackgroundStyle with _$BackgroundStyle {
  const factory BackgroundStyle.solid({
    required String id,
    required String label,
    required Color color,
  }) = SolidBackground;

  const factory BackgroundStyle.gradient({
    required String id,
    required String label,
    required Color colorA,
    required Color colorB,
    required GradientDirection direction,
  }) = GradientBackground;

  const factory BackgroundStyle.image({
    required String id,
    required String label,
    required String pack,
    required String assetPath,
  }) = ImageBackground;

  factory BackgroundStyle.defaultGradient() => const BackgroundStyle.gradient(
        id: 'grad_default',
        label: 'Professional Blue',
        colorA: Color(0xFF1E3A8A),
        colorB: Color(0xFF3B82F6),
        direction: GradientDirection.topBottom,
      );
}

enum GradientDirection {
  topBottom,
  bottomTop,
  leftRight,
  rightLeft,
  topLeftBottomRight,
  topRightBottomLeft,
}

enum FrameShape {
  square,
  circle,
  roundedSquare,
}

@freezed
class CutoutSettings with _$CutoutSettings {
  const factory CutoutSettings({
    @Default(1.0) double scale,
    @Default(0.0) double offsetX,
    @Default(0.0) double offsetY,
    @Default(50.0) double edgeSmooth,
    @Default(10.0) double edgeFeather,
    @Default(false) bool decontaminate,
  }) = _CutoutSettings;
}

@freezed
class OutlineSettings with _$OutlineSettings {
  const factory OutlineSettings({
    @Default(false) bool enabled,
    @Default(Color(0xFFFFFFFF)) Color color,
    @Default(2.0) double thickness,
    @Default(0.0) double blur,
  }) = _OutlineSettings;
}

@freezed
class GlowSettings with _$GlowSettings {
  const factory GlowSettings({
    @Default(false) bool enabled,
    @Default(Color(0xFFFFFFFF)) Color color,
    @Default(0.5) double intensity,
    @Default(18.0) double spread,
  }) = _GlowSettings;
}

@freezed
class ShadowSettings with _$ShadowSettings {
  const factory ShadowSettings({
    @Default(false) bool enabled,
    @Default(0.3) double opacity,
    @Default(20.0) double blur,
    @Default(10.0) double offset,
  }) = _ShadowSettings;
}

@freezed
class EnhanceSettings with _$EnhanceSettings {
  const factory EnhanceSettings({
    @Default(0.0) double brightness,
    @Default(0.0) double contrast,
    @Default(0.0) double sharpness,
    @Default(0.0) double warmth,
    @Default(0.0) double saturation,
    @Default(0.0) double skinSmooth,
    @Default(0.0) double clarity,
    @Default(0.0) double eyeSharp,
  }) = _EnhanceSettings;
}
