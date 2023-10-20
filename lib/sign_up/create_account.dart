import '../app_theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/sign_up/componants/sign_up_widget.dart';


class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

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
                    'Create Account',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sign Up and get started',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            SignUpWidget()
          ],
        ),
      )),
    );
  }
}
