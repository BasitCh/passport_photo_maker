import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../editor/domain/repositories/image_repository.dart';
import '../bloc/editor_bloc.dart';
import '../bloc/editor_event.dart';
import '../bloc/editor_state.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editor'),
        actions: [
          BlocBuilder<EditorBloc, EditorState>(
            builder: (context, state) {
              return state.maybeWhen(
                previewReady: (_, __, ___, ____, _____, ______) => IconButton(
                  icon: const Icon(Icons.download),
                  onPressed: () {
                    context.read<EditorBloc>().add(
                          const EditorEvent.exportImage(
                            preset: ExportPreset.linkedIn,
                            quality: ExportQuality.high,
                          ),
                        );
                  },
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<EditorBloc, EditorState>(
        listener: (context, state) {
          state.maybeWhen(
            exportSuccess: (filePath, fileSize) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Image saved: $filePath'),
                  action: SnackBarAction(
                    label: 'OK',
                    onPressed: () {},
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
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial')),
            loading: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(message),
                ],
              ),
            ),
            imageLoaded: (imagePath, imageBytes, settings, maskData, maskEdits, preview) {
              return Center(
                child: preview != null
                    ? Image.memory(preview.bytes)
                    : const CircularProgressIndicator(),
              );
            },
            processing: (imagePath, imageBytes, settings, message, maskData, maskEdits, preview) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (preview != null) Image.memory(preview.bytes),
                    const SizedBox(height: 16),
                    const CircularProgressIndicator(),
                    const SizedBox(height: 16),
                    Text(message),
                  ],
                ),
              );
            },
            previewReady: (imagePath, imageBytes, settings, maskData, maskEdits, preview) {
              return Center(
                child: Image.memory(preview.bytes),
              );
            },
            exportSuccess: (filePath, fileSize) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.check_circle, size: 64, color: Colors.green),
                    const SizedBox(height: 16),
                    const Text('Export successful!'),
                    const SizedBox(height: 8),
                    Text('Size: ${(fileSize / 1024).toStringAsFixed(1)} KB'),
                  ],
                ),
              );
            },
            error: (failure, imagePath, imageBytes, settings, maskData, maskEdits, preview) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, size: 64, color: Colors.red),
                    const SizedBox(height: 16),
                    Text(failure.message),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
