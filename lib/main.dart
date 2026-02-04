import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'core/di/injection.dart';
import 'core/theme/app_theme.dart';
import 'features/editor/presentation/bloc/editor_bloc.dart';
import 'features/home/presentation/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set system UI overlay style for premium look
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppTheme.backgroundDark,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  // Initialize AdMob
  await MobileAds.instance.initialize();

  // Configure Dependency Injection
  await configureDependencies();

  runApp(const PhotoMakerApp());
}

class PhotoMakerApp extends StatelessWidget {
  const PhotoMakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Photo Maker',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => getIt<EditorBloc>(),
        child: const HomeScreen(),
      ),
    );
  }
}
