import 'package:flutter/material.dart';
import 'package:staff_hound/welcome_screens/white_splash_screen.dart';

import '../app_theme/constants.dart';

class BlueSplashScreen extends StatefulWidget {
  const BlueSplashScreen({Key? key}) : super(key: key);

  @override
  State<BlueSplashScreen> createState() => _BlueSplashScreenState();
}

class _BlueSplashScreenState extends State<BlueSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: _navigateToWhiteScreen(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [gradient1, secondaryColor])),
          child: Image.asset(
            'images/logo.png',
            width: 320,
            height: 70,
          ),
        );
      },
    ));
  }

  Future<void> _navigateToWhiteScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const WhiteSplashScreen();
          },
        ),
      );
    });
  }
}
