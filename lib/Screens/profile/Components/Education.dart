import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/Widgets/EmptyAppBar.dart';
import 'package:staff_hound/Screens/profile/ProfileSetting.dart';
import 'package:staff_hound/Screens/profile/Components/TextFieldCustom.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class Educations extends StatelessWidget {
  const Educations({super.key});

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
              'Education',
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
                      hint: 'Degree Name',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    TextFieldCustom(
                      hint: 'Completion Year',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    TextFieldCustom(
                      hint: 'Institute Name',
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
                    Container(
                      height: media.height * 0.05,
                      width: media.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.styBlue)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.file_upload_outlined,
                              color: AppColors.darkBlue),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Text(
                            'Brows Degree Image',
                            style: TextStyle(color: AppColors.darkBlue),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.2,
                    ),
                    Container(
                      width: media.width * 0.5,
                      child: ProfileSettingTile(
                        title: 'Save',
                      ),
                    ),
                     SizedBox(
                      height: media.height * 0.025,
                    ),
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 10,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: media.height * 0.055,
                          width: media.width * 0.5,
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
}
