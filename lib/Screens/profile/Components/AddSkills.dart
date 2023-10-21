import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/modals/SkillsModel.dart';
import 'package:staff_hound/Widgets/EmptyAppBar.dart';
import 'package:staff_hound/Screens/profile/ProfileSetting.dart';
import 'package:staff_hound/Screens/profile/Components/AppLanguage.dart';
import 'package:staff_hound/Screens/profile/Components/TextFieldCustom.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class AddSkills extends StatelessWidget {
   AddSkills({super.key});

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
              'Skills',
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
                      hint: 'Skills',
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                  
                    Container(
                      height: media.height * 0.045,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            
                            
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: AppColors.darkBlue)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                     
                                  Text(
                                    '${skillsList[index].title}',
                                    style: TextStyle(color: AppColors.darkBlue),
                                  ),
                                  SizedBox(
                                    width: media.width * 0.01,
                                  ),
                                  Image.asset('images/Cross.png'),
                               
                                ],
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.5,
                    ),
                    Container(
                      width: media.width * 0.5,
                      child: ProfileSettingTile(
                        title: 'Save',
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AppLanguage()));
                        },
                      ),
                    ),
                     SizedBox(
                      height: media.height * 0.025,
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
   List<SkillsModel> skillsList=[
    SkillsModel(title: 'Web Design', percentage: 30,perind: 0.3),
    
    SkillsModel(title: 'HTML', percentage: 50,perind: 0.5),
    SkillsModel(title: 'Boolstrap', percentage: 30,perind: 0.3),
    SkillsModel(title: 'CSS', percentage: 85,perind: 0.85),
    SkillsModel(title: 'Ajax', percentage: 70,perind: 0.70),
  ];
}
