import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/modals/SkillsModel.dart';
import 'package:staff_hound/Widgets/EmptyAppBar.dart';
import 'package:staff_hound/modals/LanguageModel.dart';
import 'package:staff_hound/Screens/profile/ProfileSetting.dart';
import 'package:staff_hound/Screens/profile/Components/TextFieldCustom.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class AppLanguage extends StatelessWidget {
  AppLanguage({super.key});

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
              'App Language ',
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
                      height: media.height * 0.04,
                    ),
                    Text(
                      'Default Language',

                      style: TextStyle(color: AppColors.darkBlue,
                      fontSize: 15,fontWeight: FontWeight.w600
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ListTile(
                              
                              title: Text(
                                '${skillsList[index].title}',
                                style: TextStyle(color: AppColors.darkBlue),
                              ),
                              subtitle: Text('${skillsList[index].subTitle}',),
                            );
                          }),
                    ),
                    SizedBox(
                      height: media.height * 0.1,
                    ),
                    ProfileSettingTile(
                      title: 'Save',
                    ),
                    SizedBox(
                      height: media.height * 0.07,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    ));
  }

  List<LanguageModel> skillsList = [
    LanguageModel(title: 'English', subTitle: ''),
    LanguageModel(title: 'العربية',subTitle: 'Arabic'),
    LanguageModel(title: 'Azerbaijani or Azeri', subTitle: 'Azerbaijan'),
    LanguageModel(title: 'বাংলা', subTitle: 'Bengali'),
    LanguageModel(title: 'Français', subTitle: 'Franch'),
    
  ];
}
