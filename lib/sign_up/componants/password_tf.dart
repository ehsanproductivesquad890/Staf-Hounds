import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class PasswordTF extends StatelessWidget {
  const PasswordTF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.remove_red_eye_outlined,
              color: secondaryColor,
              size: 25,
            ),
            prefixIcon: Icon(
              Icons.key,
              color: secondaryColor,
              size: 25,
            ),
            hintText: 'Password',
          ),
        ),
      ],
    );
  }
}
