import 'dart:ffi';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/Widgets/EmptyAppBar.dart';
import 'package:staff_hound/Screens/profile/ProfileSetting.dart';
import 'package:staff_hound/Screens/profile/Components/AddSkills.dart';
import 'package:staff_hound/Screens/profile/Components/TextFieldCustom.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
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
              'Experience',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: media.height * 0.04,
                    ),
                    TextFieldCustom(
                      hint: 'Position',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    TextFieldCustom(
                      hint: 'Organization',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    TextFieldCustom(
                      hint: 'Achievement (Optional)',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    TextFieldCustom(
                      hint: 'Description',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    TextFieldCustom(
                      hint: 'Country',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isSHow = !isSHow;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color:isSHow==true? AppColors.styBlue:AppColors.darkBlue
                          ),
                          SizedBox(
                            width: media.width * 0.02,
                          ),
                          Text(
                            'Currently Working Here',
                            style: TextStyle(color:isSHow==true? AppColors.styBlue:AppColors.darkBlue),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: media.width * 0.45,
                          child: ProfileSettingTile(
                            title: 'Start Date',
                            onTap: () {},
                          ),
                        ),
                        SizedBox(width: media.width*0.02,),
                        Visibility(
                          visible: isSHow,
                          child: Container(
                            width: media.width * 0.45,
                            child: ProfileSettingTile(
                              title: 'End Date',
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.height * 0.1,
                    ),
                    Center(
                      child: Container(
                        width: media.width * 0.45,
                        child: ProfileSettingTile(
                          title: 'Save',
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => AddSkills()));
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    Visibility(
                      visible: !isSHow,
                      child: Center(
                        child: Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: media.height * 0.055,
                              width: media.width * 0.45,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add Education',
                                    style: TextStyle(
                                        color: AppColors.darkBlue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  bool isSHow = false;
}
