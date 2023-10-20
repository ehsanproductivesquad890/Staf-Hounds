import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class BlueLine extends StatelessWidget {
  const BlueLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 3,
        width: 50,
        color: primaryColor,
      ),
    );
  }
}
