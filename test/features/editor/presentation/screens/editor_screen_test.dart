import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/core/error/failures.dart';
import 'package:passport_photo_maker/features/editor/domain/repositories/image_repository.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_bloc.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_event.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_state.dart';
import 'package:passport_photo_maker/features/editor/presentation/screens/editor_screen.dart';
import '../../../../helpers/test_data.dart';

class MockEditorBloc extends Mock implements EditorBloc {}

void main() {
  late MockEditorBloc mockBloc;

  setUp(() {
    mockBloc = MockEditorBloc();

    // Default state
    when(() => mockBloc.state).thenReturn(const EditorState.initial());
    when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<EditorBloc>.value(
        value: mockBloc,
        child: const EditorScreen(),
      ),
    );
  }

  group('EditorScreen', () {
    testWidgets('renders loading state', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        const EditorState.loading(message: 'Loading...'),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('Loading...'), findsOneWidget);
    });

    testWidgets('renders processing state with message', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        EditorState.processing(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          message: 'Removing background...',
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('Removing background...'), findsOneWidget);
    });

    testWidgets('renders preview when ready', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        EditorState.previewReady(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          maskData: TestData.defaultMaskData(),
          maskEdits: TestData.defaultMaskEdits(),
          preview: TestData.defaultProcessedImage(),
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('shows download button when preview ready', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        EditorState.previewReady(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          maskData: TestData.defaultMaskData(),
          maskEdits: TestData.defaultMaskEdits(),
          preview: TestData.defaultProcessedImage(),
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byIcon(Icons.download), findsOneWidget);
    });

    testWidgets('download button triggers export event', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        EditorState.previewReady(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
          maskData: TestData.defaultMaskData(),
          maskEdits: TestData.defaultMaskEdits(),
          preview: TestData.defaultProcessedImage(),
        ),
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Act
      await tester.tap(find.byIcon(Icons.download));
      await tester.pump();

      // Assert
      verify(() => mockBloc.add(
            const EditorEvent.exportImage(
              preset: ExportPreset.linkedIn,
              quality: ExportQuality.high,
            ),
          )).called(1);
    });

    testWidgets('renders error state', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        const EditorState.error(
          failure: Failure.processingFailed(message: 'Processing failed'),
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byIcon(Icons.error), findsOneWidget);
      expect(find.text('Processing failed'), findsOneWidget);
    });

    testWidgets('shows snackbar on export success', (tester) async {
      // Arrange
      await tester.pumpWidget(createWidgetUnderTest());

      // Act - Simulate export success state
      when(() => mockBloc.state).thenReturn(
        const EditorState.exportSuccess(
          filePath: '/test/export/image.jpg',
          fileSizeBytes: 1024,
        ),
      );
      when(() => mockBloc.stream).thenAnswer(
        (_) => Stream.value(
          const EditorState.exportSuccess(
            filePath: '/test/export/image.jpg',
            fileSizeBytes: 1024,
          ),
        ),
      );

      // Rebuild to trigger listener
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // Assert
      expect(find.text('Image saved: /test/export/image.jpg'), findsOneWidget);
    });

    testWidgets('renders export success state', (tester) async {
      // Arrange
      when(() => mockBloc.state).thenReturn(
        const EditorState.exportSuccess(
          filePath: '/test/export/image.jpg',
          fileSizeBytes: 1024,
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byIcon(Icons.check_circle), findsOneWidget);
      expect(find.text('Export successful!'), findsOneWidget);
      expect(find.text('Size: 1.0 KB'), findsOneWidget);
    });
  });
}
