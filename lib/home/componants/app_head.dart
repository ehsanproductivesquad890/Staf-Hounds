import 'display.dart';
import 'package:flutter/material.dart';
import '../../app_theme/constants.dart';


class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, top: 30, right: 16),
      height: 200,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
            // topRight: Radius.circular(20),
            // topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset('images/menu_w.png')),
          // const SizedBox(
          //   height: 10,
          // ),
          const Display(),
        ],
      ),
    );
  }
}
