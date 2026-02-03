import "package:flutter/material.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";

import "screens/home_screen.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  runApp(const PhotoMakerApp());
}

class PhotoMakerApp extends StatelessWidget {
  const PhotoMakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      useMaterial3: true,
      fontFamily: "Roboto",
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF111827),
        surface: const Color(0xFFF9FAFB),
      ),
      scaffoldBackgroundColor: const Color(0xFFF9FAFB),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF111827),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF111827),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF111827),
          side: const BorderSide(color: Color(0xFFCBD5F5)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      chipTheme: const ChipThemeData(
        selectedColor: Color(0xFF111827),
        labelStyle: TextStyle(fontWeight: FontWeight.w600),
        shape: StadiumBorder(),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: const Color(0xFF111827),
        thumbColor: const Color(0xFF111827),
        overlayColor: const Color(0x22000000),
        inactiveTrackColor: const Color(0xFFE5E7EB),
      ),
    );

    return MaterialApp(
      title: "Professional Photo Maker",
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
