import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/editor_settings.dart';
import '../bloc/editor_bloc.dart';
import '../bloc/editor_event.dart';

class BackgroundSelector extends StatelessWidget {
  final EditorSettings settings;

  const BackgroundSelector({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppTheme.spacing16),
      children: [
        // Background Images
        Text('Background Images', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        _buildImagePicker(context),

        const SizedBox(height: AppTheme.spacing24),

        // Solid Colors
        Text('Solid Colors', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        _buildColorGrid(context),

        const SizedBox(height: AppTheme.spacing24),

        // Gradients
        Text('Gradients', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        _buildGradientGrid(context),

        const SizedBox(height: AppTheme.spacing24),

        // Frame Shape
        Text('Frame Shape', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        _buildShapeSelector(context),
      ],
    );
  }

  Widget _buildImagePicker(BuildContext context) {
    final isImage = settings.background.maybeWhen(
      image: (_, __, ___, ____) => true,
      orElse: () => false,
    );

    return Container(
      padding: const EdgeInsets.all(AppTheme.spacing16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceLight,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(
          color: isImage ? AppTheme.primaryBlue : AppTheme.border,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppTheme.primaryBlue.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            ),
            child: const Icon(Icons.photo, color: AppTheme.primaryBlue),
          ),
          const SizedBox(width: AppTheme.spacing12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Use Image Background', style: AppTheme.headingSmall),
                const SizedBox(height: AppTheme.spacing4),
                Text(
                  'Pick a background from your gallery',
                  style: AppTheme.bodySmall,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<EditorBloc>().add(
                    const EditorEvent.pickBackgroundImage(),
                  );
            },
            child: const Text('Choose'),
          ),
        ],
      ),
    );
  }

  Widget _buildColorGrid(BuildContext context) {
    final colors = [
      {'name': 'White', 'color': const Color(0xFFFFFFFF)},
      {'name': 'Light Gray', 'color': const Color(0xFFF5F5F5)},
      {'name': 'Professional Blue', 'color': const Color(0xFF1E3A8A)},
      {'name': 'Navy', 'color': const Color(0xFF0F172A)},
      {'name': 'Teal', 'color': const Color(0xFF0D9488)},
      {'name': 'Green', 'color': const Color(0xFF059669)},
      {'name': 'Purple', 'color': const Color(0xFF7C3AED)},
      {'name': 'Red', 'color': const Color(0xFFDC2626)},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: AppTheme.spacing12,
        mainAxisSpacing: AppTheme.spacing12,
        childAspectRatio: 1,
      ),
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final colorData = colors[index];
        final color = colorData['color'] as Color;
        final name = colorData['name'] as String;

        return GestureDetector(
          onTap: () {
            context.read<EditorBloc>().add(
                  EditorEvent.updateBackground(
                    BackgroundStyle.solid(
                      id: 'solid_$index',
                      label: name,
                      color: color,
                    ),
                  ),
                );
          },
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
              border: Border.all(
                color: settings.background.maybeWhen(
                  solid: (id, label, bgColor) => bgColor == color
                      ? AppTheme.primaryBlue
                      : AppTheme.border,
                  orElse: () => AppTheme.border,
                ),
                width: 2,
              ),
              boxShadow: AppTheme.shadowSmall,
            ),
          ),
        );
      },
    );
  }

  Widget _buildGradientGrid(BuildContext context) {
    final gradients = [
      {
        'name': 'Professional Blue',
        'colorA': const Color(0xFF1E3A8A),
        'colorB': const Color(0xFF3B82F6),
      },
      {
        'name': 'Purple Dream',
        'colorA': const Color(0xFF7C3AED),
        'colorB': const Color(0xFFA855F7),
      },
      {
        'name': 'Teal Ocean',
        'colorA': const Color(0xFF0D9488),
        'colorB': const Color(0xFF14B8A6),
      },
      {
        'name': 'Sunset',
        'colorA': const Color(0xFFDC2626),
        'colorB': const Color(0xFFF97316),
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppTheme.spacing12,
        mainAxisSpacing: AppTheme.spacing12,
        childAspectRatio: 2,
      ),
      itemCount: gradients.length,
      itemBuilder: (context, index) {
        final gradData = gradients[index];
        final colorA = gradData['colorA'] as Color;
        final colorB = gradData['colorB'] as Color;
        final name = gradData['name'] as String;

        return GestureDetector(
          onTap: () {
            context.read<EditorBloc>().add(
                  EditorEvent.updateBackground(
                    BackgroundStyle.gradient(
                      id: 'gradient_$index',
                      label: name,
                      colorA: colorA,
                      colorB: colorB,
                      direction: GradientDirection.topBottom,
                    ),
                  ),
                );
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [colorA, colorB],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
              border: Border.all(color: AppTheme.border),
              boxShadow: AppTheme.shadowSmall,
            ),
            child: Center(
              child: Text(
                name,
                style: AppTheme.labelMedium.copyWith(
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildShapeSelector(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildShapeOption(
            context,
            'Circle',
            Icons.circle_outlined,
            FrameShape.circle,
          ),
        ),
        const SizedBox(width: AppTheme.spacing12),
        Expanded(
          child: _buildShapeOption(
            context,
            'Square',
            Icons.crop_square,
            FrameShape.square,
          ),
        ),
        const SizedBox(width: AppTheme.spacing12),
        Expanded(
          child: _buildShapeOption(
            context,
            'Rounded',
            Icons.crop_square_rounded,
            FrameShape.roundedSquare,
          ),
        ),
      ],
    );
  }

  Widget _buildShapeOption(
    BuildContext context,
    String label,
    IconData icon,
    FrameShape shape,
  ) {
    final isSelected = settings.frameShape == shape;

    return GestureDetector(
      onTap: () {
        context.read<EditorBloc>().add(
              EditorEvent.updateFrameShape(shape),
            );
      },
      child: Container(
        padding: const EdgeInsets.all(AppTheme.spacing16),
        decoration: BoxDecoration(
          color: isSelected
              ? AppTheme.primaryBlue.withValues(alpha: 0.2)
              : AppTheme.surfaceLight,
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          border: Border.all(
            color: isSelected ? AppTheme.primaryBlue : AppTheme.border,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? AppTheme.primaryBlue : AppTheme.textPrimary,
              size: 32,
            ),
            const SizedBox(height: AppTheme.spacing8),
            Text(
              label,
              style: AppTheme.labelMedium.copyWith(
                color: isSelected ? AppTheme.primaryBlue : AppTheme.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
