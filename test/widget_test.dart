import "package:flutter_test/flutter_test.dart";

import "package:passport_photo_maker/main.dart";

void main() {
  testWidgets("Home screen renders", (tester) async {
    await tester.pumpWidget(const PhotoMakerApp());

    expect(find.text("Professional Photo Maker"), findsOneWidget);
    expect(find.text("Upload Photo"), findsOneWidget);
  });
}
