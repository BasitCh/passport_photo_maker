import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../editor/presentation/bloc/editor_bloc.dart';
import '../../../editor/presentation/bloc/editor_event.dart';
import '../../../editor/presentation/bloc/editor_state.dart';
import '../../../editor/presentation/screens/editor_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Professional Photo Maker'),
        centerTitle: true,
      ),
      body: BlocListener<EditorBloc, EditorState>(
        listener: (context, state) {
          state.maybeWhen(
            imageLoaded: (imagePath, imageBytes, settings, maskData, maskEdits, preview) {
              // Navigate to editor when image is loaded
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: context.read<EditorBloc>(),
                    child: const EditorScreen(),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.photo_camera,
                  size: 120,
                  color: Color(0xFF6366F1),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Create Professional Photos',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Perfect for LinkedIn, resumes, and professional profiles',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF94A3B8),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<EditorBloc>().add(
                            const EditorEvent.pickImage(fromCamera: false),
                          );
                    },
                    child: const Text('Upload Photo'),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<EditorBloc>().add(
                            const EditorEvent.pickImage(fromCamera: true),
                          );
                    },
                    child: const Text('Take Photo'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
