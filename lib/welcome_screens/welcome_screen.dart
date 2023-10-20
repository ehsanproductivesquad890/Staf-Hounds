import 'package:flutter/material.dart';

import '../app_theme/constants.dart';
import 'sign_in_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              color: containerColor,
              child: Column(
                children: [
                  Image.asset('images/illustration.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome!',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sign In and get started',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            SignInWidget(),
          ],
        ),
      )),
    );
  }
}
