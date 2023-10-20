import 'package:flutter/material.dart';

import '../app_theme/constants.dart';
import 'componants/profile_foot.dart';
import 'componants/profile_head.dart';
import 'componants/profile_tile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [
          primaryColor,
          secondaryColor,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ProfileHead(),
                  SizedBox(height: 30),
                  ProfileTile(),
                ],
              ),
              ProfileFoot()
            ],
          ),
        ),
      ),
    );
  }
}
