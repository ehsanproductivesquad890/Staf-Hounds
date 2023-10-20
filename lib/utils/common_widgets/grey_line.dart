import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class GreyLine extends StatelessWidget {
  const GreyLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 2,
      width: 150,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Colors.white,
            lineColor,
            Colors.white,
            // yellow sun
            // blue sky
          ],
        ),
      ),
    );
  }
}
