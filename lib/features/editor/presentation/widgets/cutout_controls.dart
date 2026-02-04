import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/editor_settings.dart';
import '../bloc/editor_bloc.dart';
import '../bloc/editor_event.dart';

class CutoutControls extends StatelessWidget {
  final EditorSettings settings;
  final int brushSize;
  final bool eraseMode;
  final ValueChanged<int> onBrushSizeChanged;
  final ValueChanged<bool> onEraseModeChanged;

  const CutoutControls({
    super.key,
    required this.settings,
    required this.brushSize,
    required this.eraseMode,
    required this.onBrushSizeChanged,
    required this.onEraseModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppTheme.spacing16),
      children: [
        Text('Cutout Tools', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        _buildModeToggle(),
        const SizedBox(height: AppTheme.spacing20),
        _buildBrushSize(),
        const SizedBox(height: AppTheme.spacing24),
        _buildRefineButton(context),
        const SizedBox(height: AppTheme.spacing12),
        _buildResetPosition(context),
        const SizedBox(height: AppTheme.spacing24),
        Text(
          'Tip: Drag and pinch on the preview to reposition the subject.',
          style: AppTheme.bodySmall,
        ),
      ],
    );
  }

  Widget _buildModeToggle() {
    return Container(
      padding: const EdgeInsets.all(AppTheme.spacing8),
      decoration: BoxDecoration(
        color: AppTheme.surfaceLight,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
      ),
      child: Row(
        children: [
          Expanded(
            child: _modeButton(
              label: 'Erase',
              selected: eraseMode,
              onTap: () => onEraseModeChanged(true),
            ),
          ),
          const SizedBox(width: AppTheme.spacing8),
          Expanded(
            child: _modeButton(
              label: 'Restore',
              selected: !eraseMode,
              onTap: () => onEraseModeChanged(false),
            ),
          ),
        ],
      ),
    );
  }

  Widget _modeButton({
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(vertical: AppTheme.spacing12),
        decoration: BoxDecoration(
          color: selected ? AppTheme.primaryBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: AppTheme.labelLarge.copyWith(
            color: selected ? Colors.white : AppTheme.textSecondary,
          ),
        ),
      ),
    );
  }

  Widget _buildBrushSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Brush Size', style: AppTheme.bodyMedium),
            Text(
              '$brushSize px',
              style: AppTheme.labelMedium.copyWith(
                color: AppTheme.primaryBlue,
              ),
            ),
          ],
        ),
        Slider(
          value: brushSize.toDouble(),
          min: 6,
          max: 72,
          onChanged: (value) => onBrushSizeChanged(value.round()),
        ),
      ],
    );
  }

  Widget _buildRefineButton(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        context.read<EditorBloc>().add(const EditorEvent.segmentPerson());
      },
      icon: const Icon(Icons.auto_fix_high),
      label: const Text('Refine Cutout'),
    );
  }

  Widget _buildResetPosition(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        final reset = settings.cutout.copyWith(
          scale: 1,
          offsetX: 0,
          offsetY: 0,
        );
        context.read<EditorBloc>().add(
              EditorEvent.updateSettings(
                settings.copyWith(cutout: reset),
              ),
            );
      },
      icon: const Icon(Icons.center_focus_strong),
      label: const Text('Center Subject'),
    );
  }
}
