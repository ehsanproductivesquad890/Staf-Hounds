import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class NameTF extends StatelessWidget {
  const NameTF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: secondaryColor,
              size: 25,
            ),
            hintText: 'Full Name',
          ),
        ),
      ],
    );
  }
}
