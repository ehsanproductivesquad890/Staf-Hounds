import 'package:flutter/material.dart';
import 'package:staff_hound/welcome_screens/blue_splash_screen.dart';

import 'app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      title: 'Staff Hound',
      home: BlueSplashScreen(),
    );
  }
}
