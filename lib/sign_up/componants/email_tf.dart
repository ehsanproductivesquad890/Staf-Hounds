import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class EmailTF extends StatelessWidget {
  const EmailTF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: secondaryColor,
              size: 25,
            ),
            hintText: 'Email',
          ),
        ),
      ],
    );
  }
}
