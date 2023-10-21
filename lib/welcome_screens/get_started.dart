import 'package:flutter/material.dart';
import 'package:staff_hound/welcome_screens/welcome_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'images/illustration.png',
              width: 330,
              height: 300,
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Column(
              children: [
                Text(
                  'Find the Jobs that suit your skills',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'We help you find your dream job, register and complete your profile to start a brilliant career!',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    );
                  },
                  child: const Text(
                    'Get Started',
                  )),
            )
          ],
        ),
      )),
    );
  }
}
