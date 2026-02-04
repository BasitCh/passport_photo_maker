import 'dart:math' as math;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/editor_settings.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/entities/processed_image.dart';
import '../../domain/repositories/image_repository.dart';
import '../bloc/editor_bloc.dart';
import '../bloc/editor_event.dart';
import '../bloc/editor_state.dart';
import '../widgets/background_selector.dart';
import '../widgets/cutout_controls.dart';
import '../widgets/effects_controls.dart';
import '../widgets/enhance_controls.dart';
import '../widgets/export_dialog.dart';
import '../../../export/presentation/bloc/export_history_cubit.dart';

class EditorScreenRedesigned extends StatefulWidget {
  const EditorScreenRedesigned({super.key});

  @override
  State<EditorScreenRedesigned> createState() => _EditorScreenRedesignedState();
}

class _EditorScreenRedesignedState extends State<EditorScreenRedesigned>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showBeforeAfter = false;
  int _activeTabIndex = 0;
  int _brushSize = 24;
  bool _eraseMode = true;
  bool _moveMode = false;
  Offset _gestureDelta = Offset.zero;
  double _gestureScaleStart = 1;
  Offset _gestureOffsetStart = Offset.zero;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      if (_activeTabIndex != _tabController.index) {
        setState(() => _activeTabIndex = _tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        title: const Text('Professional Photo Maker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.compare),
            onPressed: () {
              setState(() => _showBeforeAfter = !_showBeforeAfter);
            },
            tooltip: 'Before/After',
          ),
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => _showExportDialog(context),
            tooltip: 'Export',
          ),
        ],
      ),
      body: BlocConsumer<EditorBloc, EditorState>(
        listener: (context, state) {
          state.maybeWhen(
            exportSuccess: (filePath, fileSize) {
              context.read<ExportHistoryCubit>().refresh();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const Icon(Icons.check_circle, color: AppTheme.success),
                      const SizedBox(width: AppTheme.spacing12),
                      Expanded(
                        child: Text(
                          'Saved! ${(fileSize / 1024).toStringAsFixed(0)} KB',
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: AppTheme.surfaceLight,
                ),
              );
            },
            error: (failure, _, __, ___, ____, _____, ______) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const Icon(Icons.error, color: AppTheme.error),
                      const SizedBox(width: AppTheme.spacing12),
                      Expanded(child: Text(failure.message)),
                    ],
                  ),
                  backgroundColor: AppTheme.surfaceLight,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => _buildEmptyState(),
            loading: (message) => _buildLoadingState(message),
            imageLoaded: (imagePath, imageBytes, settings, maskData, maskEdits, preview) =>
                _buildEditor(
              context,
              imageBytes,
              preview,
              settings,
              maskData,
            ),
            processing: (imagePath, imageBytes, settings, message, maskData, maskEdits, preview) =>
                _buildEditor(
              context,
              imageBytes,
              preview,
              settings,
              maskData,
              processing: true,
              processingMessage: message,
            ),
            previewReady: (imagePath, imageBytes, settings, maskData, maskEdits, preview) =>
                _buildEditor(
              context,
              imageBytes,
              preview,
              settings,
              maskData,
            ),
            exportSuccess: (filePath, fileSize) => _buildExportSuccess(fileSize),
            error: (failure, _, __, ___, ____, _____, ______) => _buildErrorState(failure.message),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacing24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.photo_outlined, size: 96, color: AppTheme.textMuted),
            const SizedBox(height: AppTheme.spacing24),
            Text('Start with a portrait photo', style: AppTheme.headingLarge),
            const SizedBox(height: AppTheme.spacing12),
            Text(
              'Upload an image to generate a professional background and cutout.',
              style: AppTheme.bodyMedium.copyWith(color: AppTheme.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(color: AppTheme.primaryBlue),
          const SizedBox(height: AppTheme.spacing16),
          Text(message, style: AppTheme.bodyLarge),
        ],
      ),
    );
  }

  Widget _buildExportSuccess(int fileSize) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, size: 80, color: AppTheme.success),
          const SizedBox(height: AppTheme.spacing24),
          Text('Export Successful!', style: AppTheme.headingLarge),
          const SizedBox(height: AppTheme.spacing12),
          Text(
            'Size: ${(fileSize / 1024).toStringAsFixed(1)} KB',
            style: AppTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, size: 80, color: AppTheme.error),
          const SizedBox(height: AppTheme.spacing24),
          Text(message, style: AppTheme.bodyLarge),
          const SizedBox(height: AppTheme.spacing24),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Go Back'),
          ),
        ],
      ),
    );
  }

  Widget _buildEditor(
    BuildContext context,
    Uint8List sourceBytes,
    ProcessedImage? preview,
    EditorSettings settings,
    MaskData? maskData, {
    bool processing = false,
    String processingMessage = '',
  }) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            margin: const EdgeInsets.all(AppTheme.spacing16),
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              border: Border.all(color: AppTheme.border),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final previewSize = preview == null
                    ? null
                    : Size(
                        preview.width.toDouble(),
                        preview.height.toDouble(),
                      );

                return Stack(
                  children: [
                    _buildPreview(
                      sourceBytes: sourceBytes,
                      preview: preview,
                      settings: settings,
                      maskData: maskData,
                      containerSize: constraints.biggest,
                      previewSize: previewSize,
                    ),
                    if (processing)
                      _buildProcessingOverlay(processingMessage),
                    if (_showBeforeAfter)
                      Positioned(
                        top: AppTheme.spacing16,
                        right: AppTheme.spacing16,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppTheme.spacing12,
                            vertical: AppTheme.spacing8,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryBlue,
                            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                          ),
                          child: Text(
                            'BEFORE',
                            style: AppTheme.labelMedium.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppTheme.radiusXLarge),
                topRight: Radius.circular(AppTheme.radiusXLarge),
              ),
            ),
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: const [
                    Tab(icon: Icon(Icons.cut), text: 'Cutout'),
                    Tab(icon: Icon(Icons.palette), text: 'Background'),
                    Tab(icon: Icon(Icons.auto_awesome), text: 'Border / Glow'),
                    Tab(icon: Icon(Icons.tune), text: 'Enhance'),
                    Tab(icon: Icon(Icons.download), text: 'Export'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      CutoutControls(
                        settings: settings,
                        brushSize: _brushSize,
                        eraseMode: _eraseMode,
                        onBrushSizeChanged: (value) {
                          setState(() => _brushSize = value);
                        },
                        onEraseModeChanged: (value) {
                          setState(() => _eraseMode = value);
                        },
                      ),
                      BackgroundSelector(settings: settings),
                      EffectsControls(settings: settings),
                      EnhanceControls(settings: settings),
                      _buildExportTab(context),
                    ],
                  ),
                ),
                _buildMoveToggle(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPreview({
    required Uint8List sourceBytes,
    required ProcessedImage? preview,
    required EditorSettings settings,
    required MaskData? maskData,
    required Size containerSize,
    required Size? previewSize,
  }) {
    final showProcessed = !_showBeforeAfter && preview != null;
    final image = showProcessed ? preview!.bytes : sourceBytes;

    final isCutoutTab = _activeTabIndex == 0 && preview != null && maskData != null;
    final allowBrush = isCutoutTab && !_moveMode;
    final allowMove = isCutoutTab && _moveMode;

    return GestureDetector(
      onScaleStart: allowMove
          ? (details) {
              _gestureScaleStart = settings.cutout.scale;
              _gestureOffsetStart = Offset(
                settings.cutout.offsetX,
                settings.cutout.offsetY,
              );
              _gestureDelta = Offset.zero;
            }
          : null,
      onScaleUpdate: allowMove && previewSize != null
          ? (details) {
              _gestureDelta += details.focalPointDelta;
              final nextScale =
                  (_gestureScaleStart * details.scale).clamp(0.6, 2.0);
              final offsetX = _gestureOffsetStart.dx +
                  (_gestureDelta.dx / containerSize.width);
              final offsetY = _gestureOffsetStart.dy +
                  (_gestureDelta.dy / containerSize.height);

              context.read<EditorBloc>().add(
                    EditorEvent.updateSettings(
                      settings.copyWith(
                        cutout: settings.cutout.copyWith(
                          scale: nextScale,
                          offsetX: offsetX,
                          offsetY: offsetY,
                        ),
                      ),
                    ),
                  );
            }
          : null,
      onPanUpdate: allowBrush && preview != null && previewSize != null
          ? (details) {
              _applyBrushStroke(
                localPosition: details.localPosition,
                containerSize: containerSize,
                previewSize: previewSize,
                maskData: maskData,
              );
            }
          : null,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 220),
        child: Center(
          key: ValueKey(showProcessed),
          child: preview == null && !_showBeforeAfter
              ? _buildEmptyPreview()
              : Image.memory(
                  image,
                  fit: BoxFit.contain,
                ),
        ),
      ),
    );
  }

  Widget _buildMoveToggle() {
    if (_activeTabIndex != 0) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppTheme.spacing16,
        0,
        AppTheme.spacing16,
        AppTheme.spacing12,
      ),
      child: Row(
        children: [
          Icon(
            _moveMode ? Icons.open_with : Icons.brush,
            color: AppTheme.textSecondary,
          ),
          const SizedBox(width: AppTheme.spacing8),
          Text(
            _moveMode ? 'Move subject' : 'Brush edit',
            style: AppTheme.bodySmall,
          ),
          const Spacer(),
          Switch(
            value: _moveMode,
            onChanged: (value) => setState(() => _moveMode = value),
            activeTrackColor: AppTheme.primaryBlue,
          ),
        ],
      ),
    );
  }

  Widget _buildProcessingOverlay(String message) {
    return Container(
      color: Colors.black.withValues(alpha: 0.5),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(color: AppTheme.primaryBlue),
            const SizedBox(height: AppTheme.spacing16),
            Text(message, style: AppTheme.bodyLarge),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyPreview() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.layers_outlined, size: 64, color: AppTheme.textMuted),
        const SizedBox(height: AppTheme.spacing12),
        Text('Preparing preview', style: AppTheme.bodyMedium),
      ],
    );
  }

  void _applyBrushStroke({
    required Offset localPosition,
    required Size containerSize,
    required Size previewSize,
    required MaskData? maskData,
  }) {
    if (maskData == null) return;

    final fit = _calculateFitRect(containerSize, previewSize);
    if (!fit.contains(localPosition)) return;

    final dx = (localPosition.dx - fit.left) / fit.width;
    final dy = (localPosition.dy - fit.top) / fit.height;
    final x = (dx * maskData.width).round();
    final y = (dy * maskData.height).round();

    if (x < 0 || x >= maskData.width || y < 0 || y >= maskData.height) return;

    context.read<EditorBloc>().add(
          EditorEvent.applyBrushStroke(
            x: x,
            y: y,
            brushSize: _brushSize,
            eraseMode: _eraseMode,
          ),
        );
  }

  Rect _calculateFitRect(Size container, Size image) {
    final scale = math.min(
      container.width / image.width,
      container.height / image.height,
    );
    final displayWidth = image.width * scale;
    final displayHeight = image.height * scale;
    final left = (container.width - displayWidth) / 2;
    final top = (container.height - displayHeight) / 2;
    return Rect.fromLTWH(left, top, displayWidth, displayHeight);
  }

  Widget _buildExportTab(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppTheme.spacing16),
      children: [
        Text('Export Sizes', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing16),
        _buildExportSizeCard(
          context,
          'LinkedIn DP',
          '800 × 800',
          'Perfect for LinkedIn profile',
          Icons.business,
          ExportPreset.linkedIn,
        ),
        _buildExportSizeCard(
          context,
          'CV Photo',
          '600 × 900',
          'Standard resume format',
          Icons.description,
          ExportPreset.cvPhoto,
        ),
        _buildExportSizeCard(
          context,
          'WhatsApp DP',
          '640 × 640',
          'Optimized for messaging',
          Icons.chat,
          ExportPreset.whatsapp,
        ),
        const SizedBox(height: AppTheme.spacing24),
        Text('Export History', style: AppTheme.headingSmall),
        const SizedBox(height: AppTheme.spacing12),
        BlocBuilder<ExportHistoryCubit, ExportHistoryState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(AppTheme.spacing16),
                  child: CircularProgressIndicator(
                    color: AppTheme.primaryBlue,
                  ),
                ),
              );
            }

            if (state.error != null) {
              return Text(state.error!, style: AppTheme.bodySmall);
            }

            if (state.entries.isEmpty) {
              return Text(
                'No exports yet. Your saved files will appear here.',
                style: AppTheme.bodySmall,
              );
            }

            return Column(
              children: state.entries.map((entry) {
                return Card(
                  margin: const EdgeInsets.only(bottom: AppTheme.spacing12),
                  child: ListTile(
                    title: Text(entry.presetId, style: AppTheme.headingSmall),
                    subtitle: Text(
                      '${(entry.sizeBytes / 1024).toStringAsFixed(0)} KB',
                      style: AppTheme.bodySmall,
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () {
                        context.read<ExportHistoryCubit>().share(entry.path);
                      },
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildExportSizeCard(
    BuildContext context,
    String title,
    String size,
    String description,
    IconData icon,
    ExportPreset preset,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppTheme.spacing12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppTheme.primaryBlue.withValues(alpha: 0.2),
          child: Icon(icon, color: AppTheme.primaryBlue),
        ),
        title: Text(title, style: AppTheme.headingSmall),
        subtitle: Text('$size • $description'),
        trailing: ElevatedButton(
          onPressed: () {
            context.read<EditorBloc>().add(
                  EditorEvent.exportImage(
                    preset: preset,
                    quality: ExportQuality.high,
                  ),
                );
          },
          child: const Text('Export'),
        ),
      ),
    );
  }

  void _showExportDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.surfaceDark,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusXLarge),
        ),
      ),
      builder: (context) => const ExportDialogWidget(),
    );
  }
}
