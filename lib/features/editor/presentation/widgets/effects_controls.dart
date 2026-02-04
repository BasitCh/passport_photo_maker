import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/editor_settings.dart';
import '../bloc/editor_bloc.dart';
import '../bloc/editor_event.dart';

class EffectsControls extends StatelessWidget {
  final EditorSettings settings;

  const EffectsControls({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppTheme.spacing16),
      children: [
        // Outline
        _buildEffectSection(
          context,
          'Outline',
          Icons.border_color,
          settings.outline.enabled,
          () {
            final newSettings = settings.copyWith(
              outline: settings.outline.copyWith(
                enabled: !settings.outline.enabled,
              ),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
          [
            if (settings.outline.enabled) ...[
              _buildSlider(
                context,
                'Thickness',
                settings.outline.thickness,
                0,
                10,
                (value) {
                  final newSettings = settings.copyWith(
                    outline: settings.outline.copyWith(thickness: value),
                  );
                  context.read<EditorBloc>().add(
                        EditorEvent.updateSettings(newSettings),
                      );
                },
              ),
              _buildSlider(
                context,
                'Blur',
                settings.outline.blur,
                0,
                20,
                (value) {
                  final newSettings = settings.copyWith(
                    outline: settings.outline.copyWith(blur: value),
                  );
                  context.read<EditorBloc>().add(
                        EditorEvent.updateSettings(newSettings),
                      );
                },
              ),
            ],
          ],
        ),

        const SizedBox(height: AppTheme.spacing24),

        // Glow
        _buildEffectSection(
          context,
          'Glow',
          Icons.light_mode,
          settings.glow.enabled,
          () {
            final newSettings = settings.copyWith(
              glow: settings.glow.copyWith(
                enabled: !settings.glow.enabled,
              ),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
          [
            if (settings.glow.enabled) ...[
              _buildSlider(
                context,
                'Intensity',
                settings.glow.intensity,
                0,
                1,
                (value) {
                  final newSettings = settings.copyWith(
                    glow: settings.glow.copyWith(intensity: value),
                  );
                  context.read<EditorBloc>().add(
                        EditorEvent.updateSettings(newSettings),
                      );
                },
              ),
              _buildSlider(
                context,
                'Spread',
                settings.glow.spread,
                0,
                50,
                (value) {
                  final newSettings = settings.copyWith(
                    glow: settings.glow.copyWith(spread: value),
                  );
                  context.read<EditorBloc>().add(
                        EditorEvent.updateSettings(newSettings),
                      );
                },
              ),
            ],
          ],
        ),

        const SizedBox(height: AppTheme.spacing24),

        // Shadow
        _buildEffectSection(
          context,
          'Shadow',
          Icons.brightness_5,
          settings.shadow.enabled,
          () {
            final newSettings = settings.copyWith(
              shadow: settings.shadow.copyWith(
                enabled: !settings.shadow.enabled,
              ),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
          [
            if (settings.shadow.enabled) ...[
              _buildSlider(
                context,
                'Opacity',
                settings.shadow.opacity,
                0,
                1,
                (value) {
                  final newSettings = settings.copyWith(
                    shadow: settings.shadow.copyWith(opacity: value),
                  );
                  context.read<EditorBloc>().add(
                        EditorEvent.updateSettings(newSettings),
                      );
                },
              ),
              _buildSlider(
                context,
                'Blur',
                settings.shadow.blur,
                0,
                50,
                (value) {
                  final newSettings = settings.copyWith(
                    shadow: settings.shadow.copyWith(blur: value),
                  );
                  context.read<EditorBloc>().add(
                        EditorEvent.updateSettings(newSettings),
                      );
                },
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildEffectSection(
    BuildContext context,
    String title,
    IconData icon,
    bool enabled,
    VoidCallback onToggle,
    List<Widget> controls,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: AppTheme.primaryBlue),
            const SizedBox(width: AppTheme.spacing12),
            Text(title, style: AppTheme.headingSmall),
            const Spacer(),
            Switch(
              value: enabled,
              onChanged: (_) => onToggle(),
              activeTrackColor: AppTheme.primaryBlue,
            ),
          ],
        ),
        ...controls,
      ],
    );
  }

  Widget _buildSlider(
    BuildContext context,
    String label,
    double value,
    double min,
    double max,
    ValueChanged<double> onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppTheme.spacing8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: AppTheme.bodyMedium),
              Text(
                value.toStringAsFixed(1),
                style: AppTheme.labelMedium.copyWith(
                  color: AppTheme.primaryBlue,
                ),
              ),
            ],
          ),
          Slider(
            value: value,
            min: min,
            max: max,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
