import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';
import 'tile_des.dart';

class AppFoot extends StatelessWidget {
  const AppFoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: secondaryColor,
        // borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(20),
        //     bottomRight: Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TileDes(
              icon: Icons.home,
              text: 'Home',
              isHome: true,
            ),
            TileDes(
              icon: Icons.work_history_outlined,
              text: 'Jobs',
              isHome: true,
            ),
            TileDes(
              icon: Icons.notifications_off_outlined,
              text: 'Notification',
              isHome: true,
            ),
            TileDes(
              icon: Icons.supervised_user_circle_outlined,
              text: 'Profile',
              isHome: true,
            ),
          ],
        ),
      ),
    );
  }
}
