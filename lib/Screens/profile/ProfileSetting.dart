import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/Widgets/EmptyAppBar.dart';
import 'package:staff_hound/Screens/profile/Components/AddSkills.dart';
import 'package:staff_hound/Screens/profile/Components/Education.dart';
import 'package:staff_hound/Screens/profile/Components/Experience.dart';
class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          emptyAppbar(media: media),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Profile Settings',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Container(
              width: media.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          color: AppColors.darkBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.height * 0.01,
                    ),
                    Container(
                      height: media.height * 0.1,
                      width: media.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.darkBlue)),
                    ),
                    SizedBox(
                      height: media.height * 0.015,
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: media.height * 0.055,
                        width: media.width,
                        decoration: BoxDecoration(
                          color: AppColors.darkBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Attach  Resume',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: media.width * 0.02,
                            ),
                            SvgPicture.asset(
                              'images/Document Medicine.svg',
                              height: media.height * 0.035,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.015,
                    ),
                    ProfileSettingTile(
                      title: 'Add Education',
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Educations()));
                      },
                    ),
                    SizedBox(
                      height: media.height * 0.015,
                    ),
                    ProfileSettingTile(
                      title: 'Add Skills',
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AddSkills()));
                      },
                    ),
                    SizedBox(
                      height: media.height * 0.015,
                    ),
                    ProfileSettingTile(
                      title: 'Add Experience',
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Experience()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class ProfileSettingTile extends StatelessWidget {
  String? title;
  String? icon;
  VoidCallback? onTap;
  ProfileSettingTile({
    this.title,
    this.icon,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: media.height * 0.055,
        width: media.width,
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.orange)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${title}',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: media.width * 0.02,
            ),
            // SvgPicture.asset(
            //   '${icon}',
            //   height: media.height * 0.035,
            // )
          ],
        ),
      ),
    );
  }
}
