import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/core/error/failures.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_bloc.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_event.dart';
import 'package:passport_photo_maker/features/editor/presentation/bloc/editor_state.dart';
import 'package:passport_photo_maker/features/home/presentation/screens/home_screen.dart';
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
        child: const HomeScreen(),
      ),
    );
  }

  group('HomeScreen', () {
    testWidgets('renders title and buttons', (tester) async {
      // Arrange
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.text('Professional Photo Maker'), findsOneWidget);
      expect(find.text('Create Professional Photos'), findsOneWidget);
      expect(find.text('Upload Photo'), findsOneWidget);
      expect(find.text('Take Photo'), findsOneWidget);
      expect(find.byIcon(Icons.photo_camera), findsOneWidget);
    });

    testWidgets('Upload Photo button triggers pickImage event', (tester) async {
      // Arrange
      await tester.pumpWidget(createWidgetUnderTest());

      // Act
      await tester.tap(find.text('Upload Photo'));
      await tester.pump();

      // Assert
      verify(() => mockBloc.add(const EditorEvent.pickImage(fromCamera: false)))
          .called(1);
    });

    testWidgets('Take Photo button triggers pickImage with camera', (tester) async {
      // Arrange
      await tester.pumpWidget(createWidgetUnderTest());

      // Act
      await tester.tap(find.text('Take Photo'));
      await tester.pump();

      // Assert
      verify(() => mockBloc.add(const EditorEvent.pickImage(fromCamera: true)))
          .called(1);
    });

    testWidgets('shows snackbar on error state', (tester) async {
      // Arrange
      await tester.pumpWidget(createWidgetUnderTest());

      // Act - Simulate error state
      when(() => mockBloc.state).thenReturn(
        const EditorState.error(
          failure: Failure.loadFailed(message: 'Failed to pick image'),
        ),
      );
      when(() => mockBloc.stream).thenAnswer(
        (_) => Stream.value(
          const EditorState.error(
            failure: Failure.loadFailed(message: 'Failed to pick image'),
          ),
        ),
      );

      // Rebuild to trigger listener
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // Assert
      expect(find.text('Failed to pick image'), findsOneWidget);
    });

    testWidgets('navigates to editor when image loaded', (tester) async {
      // Arrange
      await tester.pumpWidget(createWidgetUnderTest());

      // Act - Simulate imageLoaded state
      when(() => mockBloc.state).thenReturn(
        EditorState.imageLoaded(
          imagePath: TestData.imagePath,
          imageBytes: TestData.imageBytes,
          settings: TestData.defaultSettings(),
        ),
      );
      when(() => mockBloc.stream).thenAnswer(
        (_) => Stream.value(
          EditorState.imageLoaded(
            imagePath: TestData.imagePath,
            imageBytes: TestData.imageBytes,
            settings: TestData.defaultSettings(),
          ),
        ),
      );

      // Rebuild to trigger listener
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // Assert - EditorScreen should be pushed
      expect(find.byType(HomeScreen), findsNothing);
    });
  });
}
