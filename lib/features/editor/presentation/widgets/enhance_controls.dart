import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/editor_settings.dart';
import '../bloc/editor_bloc.dart';
import '../bloc/editor_event.dart';

class EnhanceControls extends StatelessWidget {
  final EditorSettings settings;

  const EnhanceControls({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppTheme.spacing16),
      children: [
        Text('Presets', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        _buildPresets(context),

        const SizedBox(height: AppTheme.spacing24),

        Text('Manual Adjustments', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),

        _buildSlider(
          context,
          'Brightness',
          Icons.brightness_6,
          settings.enhance.brightness,
          -1,
          1,
          (value) {
            final newSettings = settings.copyWith(
              enhance: settings.enhance.copyWith(brightness: value),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
        ),

        _buildSlider(
          context,
          'Contrast',
          Icons.contrast,
          settings.enhance.contrast,
          -1,
          1,
          (value) {
            final newSettings = settings.copyWith(
              enhance: settings.enhance.copyWith(contrast: value),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
        ),

        _buildSlider(
          context,
          'Saturation',
          Icons.palette,
          settings.enhance.saturation,
          -1,
          1,
          (value) {
            final newSettings = settings.copyWith(
              enhance: settings.enhance.copyWith(saturation: value),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
        ),

        _buildSlider(
          context,
          'Sharpness',
          Icons.details,
          settings.enhance.sharpness,
          0,
          2,
          (value) {
            final newSettings = settings.copyWith(
              enhance: settings.enhance.copyWith(sharpness: value),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
        ),

        _buildSlider(
          context,
          'Warmth',
          Icons.wb_sunny,
          settings.enhance.warmth,
          -1,
          1,
          (value) {
            final newSettings = settings.copyWith(
              enhance: settings.enhance.copyWith(warmth: value),
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
        ),
      ],
    );
  }

  Widget _buildPresets(BuildContext context) {
    final presets = [
      {
        'name': 'Corporate',
        'icon': Icons.business,
        'settings': const EnhanceSettings(brightness: 0.08, contrast: 0.12, saturation: 0.05),
      },
      {
        'name': 'Studio',
        'icon': Icons.photo_camera,
        'settings': const EnhanceSettings(brightness: 0.12, contrast: 0.16, saturation: 0.08),
      },
      {
        'name': 'Natural',
        'icon': Icons.nature,
        'settings': const EnhanceSettings(brightness: 0.05, contrast: 0.08, saturation: 0.04),
      },
      {
        'name': 'Vibrant',
        'icon': Icons.color_lens,
        'settings': const EnhanceSettings(brightness: 0.1, contrast: 0.12, saturation: 0.18),
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppTheme.spacing12,
        mainAxisSpacing: AppTheme.spacing12,
        childAspectRatio: 2.5,
      ),
      itemCount: presets.length,
      itemBuilder: (context, index) {
        final preset = presets[index];
        final presetSettings = preset['settings'] as EnhanceSettings;
        return ElevatedButton.icon(
          onPressed: () {
            final newSettings = settings.copyWith(
              enhance: presetSettings,
            );
            context.read<EditorBloc>().add(
                  EditorEvent.updateSettings(newSettings),
                );
          },
          icon: Icon(preset['icon'] as IconData, size: 20),
          label: Text(preset['name'] as String),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.surfaceLight,
            foregroundColor: AppTheme.textPrimary,
          ),
        );
      },
    );
  }

  Widget _buildSlider(
    BuildContext context,
    String label,
    IconData icon,
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
            children: [
              Icon(icon, size: 16, color: AppTheme.textSecondary),
              const SizedBox(width: AppTheme.spacing8),
              Text(label, style: AppTheme.bodyMedium),
              const Spacer(),
              Text(
                value.toStringAsFixed(2),
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
