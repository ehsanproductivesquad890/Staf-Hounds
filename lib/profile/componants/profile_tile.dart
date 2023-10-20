import 'package:flutter/material.dart';

import '../../home/componants/tile_des.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TileDes(
          icon: Icons.supervised_user_circle_outlined,
          text: 'Profile',
          isHome: false,
        ),
        const SizedBox(height: 15),
        TileDes(
          icon: Icons.history,
          text: 'History',
          isHome: false,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TileDes(
              icon: Icons.notifications_off_outlined,
              text: 'Mute Notification',
              isHome: false,
            ),
            //ToggleButtons(children: , isSelected: isSelected)
          ],
        ),
        const SizedBox(height: 15),
        TileDes(
          icon: Icons.settings,
          text: 'Settings',
          isHome: false,
        ),
        const SizedBox(height: 15),
        TileDes(
          icon: Icons.question_answer_outlined,
          text: 'F&Q',
          isHome: false,
        ),
        const SizedBox(height: 15),
        TileDes(
          icon: Icons.support_agent,
          text: 'Support',
          isHome: false,
        ),
      ],
    );
  }
}
