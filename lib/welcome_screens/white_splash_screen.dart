import 'package:flutter/material.dart';
import 'package:staff_hound/welcome_screens/get_started.dart';

class WhiteSplashScreen extends StatefulWidget {
  const WhiteSplashScreen({Key? key}) : super(key: key);

  @override
  State<WhiteSplashScreen> createState() => _WhiteSplashScreenState();
}

class _WhiteSplashScreenState extends State<WhiteSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: _navigateToGetStartedScreen(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'images/logo_w.png',
            width: 320,
            height: 70,
          ),
        );
      },
    ));
  }

  Future<void> _navigateToGetStartedScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const GetStarted();
          },
        ),
      );
    });
  }
}
