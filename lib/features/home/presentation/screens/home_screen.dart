import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../editor/presentation/bloc/editor_bloc.dart';
import '../../../editor/presentation/bloc/editor_event.dart';
import '../../../editor/presentation/bloc/editor_state.dart';
import '../../../editor/presentation/screens/editor_screen_redesigned.dart';
import '../../../export/presentation/bloc/export_history_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0B1220), Color(0xFF101B32)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: BlocListener<EditorBloc, EditorState>(
            listener: (context, state) {
              state.maybeWhen(
                imageLoaded: (imagePath, imageBytes, settings, maskData, maskEdits, preview) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: context.read<EditorBloc>(),
                          ),
                          BlocProvider(
                            create: (_) => getIt<ExportHistoryCubit>(),
                          ),
                        ],
                        child: const EditorScreenRedesigned(),
                      ),
                    ),
                  );
                },
                error: (failure, _, __, ___, ____, _____, ______) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(failure.message)),
                  );
                },
                orElse: () {},
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(AppTheme.spacing24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppTheme.spacing24),
                  _buildHeader(),
                  const SizedBox(height: AppTheme.spacing32),
                  _buildPreviewCard(),
                  const SizedBox(height: AppTheme.spacing32),
                  Text('Get started', style: AppTheme.headingSmall),
                  const SizedBox(height: AppTheme.spacing12),
                  _buildPrimaryAction(context),
                  const SizedBox(height: AppTheme.spacing12),
                  _buildSecondaryAction(context),
                  const Spacer(),
                  _buildFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Professional Photo Maker', style: AppTheme.headingXLarge),
        const SizedBox(height: AppTheme.spacing12),
        Text(
          'Studio-grade portraits in minutes. Remove backgrounds, enhance lighting, and export for every platform.',
          style: AppTheme.bodyMedium.copyWith(color: AppTheme.textSecondary),
        ),
      ],
    );
  }

  Widget _buildPreviewCard() {
    return Container(
      padding: const EdgeInsets.all(AppTheme.spacing20),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        border: Border.all(color: AppTheme.border),
        boxShadow: AppTheme.shadowLarge,
      ),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
              gradient: const LinearGradient(
                colors: [Color(0xFF2563EB), Color(0xFF1D4ED8)],
              ),
            ),
            child: const Icon(Icons.auto_awesome, color: Colors.white, size: 36),
          ),
          const SizedBox(width: AppTheme.spacing16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AI Cutout + Pro Enhancements', style: AppTheme.headingSmall),
                const SizedBox(height: AppTheme.spacing8),
                Text(
                  'Background removal, precise edging, glow, and export presets built in.',
                  style: AppTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrimaryAction(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          context.read<EditorBloc>().add(
                const EditorEvent.pickImage(fromCamera: false),
              );
        },
        icon: const Icon(Icons.upload_file),
        label: const Text('Upload Photo'),
      ),
    );
  }

  Widget _buildSecondaryAction(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {
          context.read<EditorBloc>().add(
                const EditorEvent.pickImage(fromCamera: true),
              );
        },
        icon: const Icon(Icons.photo_camera),
        label: const Text('Take Photo'),
      ),
    );
  }

  Widget _buildFooter() {
    return Text(
      'Trusted by job seekers, creators, and teams worldwide.',
      style: AppTheme.bodySmall,
    );
  }
}
