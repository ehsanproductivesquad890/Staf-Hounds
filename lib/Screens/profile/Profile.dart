import 'dart:developer';
import 'dart:collection';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/modals/SkillsModel.dart';
import 'package:staff_hound/home/componants/app_head.dart';
import 'package:staff_hound/Screens/profile/ProfileSetting.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Profile extends StatelessWidget {
   Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              AppHeader(),
              // Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 10),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         SvgPicture.asset('asset/Menu.svg'),
              //         SvgPicture.asset('asset/Pen.svg'),
              //       ],
              //     )),
              // ListTile(
              //   title: Text(
              //     'Umar Farooq',
              //     style: TextStyle(
              //         color: AppColors.white,
              //         fontWeight: FontWeight.w600,
              //         fontSize: 20),
              //   ),
              //   subtitle: Text(
              //     'UI/UX Designer',
              //     style: TextStyle(
              //         color: AppColors.white,
              //         fontWeight: FontWeight.w400,
              //         fontSize: 15),
              //   ),
              //   leading: CircleAvatar(
              //     radius: 30,
              //     backgroundImage: AssetImage('asset/profile.png'),
              //   ),
              // ),
              // SizedBox(
              //   height: media.height * 0.02,
              // ),
              Container(
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
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.darkBlue),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                        style: TextStyle(color: AppColors.darkBlue),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileSetting()));
                        },
                        child: Container(
                          height: media.height * 0.06,
                          width: media.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.darkBlue),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'My Resume',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white),
                                    ),
                                    SizedBox(
                                      height: media.height * 0.005,
                                    ),
                                    Text(
                                      'Umar_Farooq_Resume.pdf',
                                      style: TextStyle(color: AppColors.white),
                                    )
                                  ],
                                ),
                                SvgPicture.asset(
                                  'images/Document Medicine.svg',
                                  height: media.height * 0.035,
                                  color: AppColors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Text(
                        'Skills',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.darkBlue),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Container(
                        height: media.height * 0.13,
                        child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: skillsList.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 10),
                                      child: CircularPercentIndicator(
                                        radius: 28,
                                        percent: 
                                            skillsList[index].perind,
                                        progressColor: AppColors.darkBlue,
                                        center: Text(
                                          '${skillsList[index].percentage}%',
                                          style: TextStyle(
                                              color: AppColors.darkBlue,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${skillsList[index].title}',
                                      style: TextStyle(
                                          color: AppColors.darkBlue),
                                    )
                                  ],
                                );
                              })
                        
                      ),
                      Text(
                        'Education',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.darkBlue),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Container(
                        height: media.height * 0.07,
                        width: media.width,
                        child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                color: AppColors.styBlue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Container(
                                    height: media.height * 0.07,
                                    width: media.width * 0.39,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Master',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.darkBlue),
                                            ),
                                            Text(
                                              '2023',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.darkBlue),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: media.height * 0.01,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Punjab University',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.darkBlue),
                                            ),
                                            Text(
                                              'Lahore',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.darkBlue),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Text(
                        'Experience',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.darkBlue),
                      ),
                      Container(
                        height: media.height*0.25,
                        
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return TimelineTile(
                                isFirst: index==0?true:false,
                                hasIndicator: true,
                                beforeLineStyle: LineStyle(
                                  color: AppColors.darkBlue
                                ),
                                
                                indicatorStyle: IndicatorStyle(
                                  color: AppColors.darkBlue
                                  ,
                                ),
                                alignment: TimelineAlign.start,
                                endChild: Container(
                                  constraints: const BoxConstraints(
                                    minHeight: 70,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2018 - Now',style: TextStyle(fontSize: 11,color: AppColors.darkBlue),),
                                      
                                      Text('Senior UI/UX Desinger',style: TextStyle(
                                        fontSize: 13,fontWeight: FontWeight.w600,
                                        color: AppColors.darkBlue
                                      ),),
                                      Text('Hobotech',style: TextStyle(fontSize: 11,color: AppColors.darkBlue),),
                                      
                                      ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  List<SkillsModel> skillsList=[
    SkillsModel(title: 'Web Design', percentage: 30,perind: 0.3),
    
    SkillsModel(title: 'HTML', percentage: 50,perind: 0.5),
    SkillsModel(title: 'Boolstrap', percentage: 30,perind: 0.3),
    SkillsModel(title: 'CSS', percentage: 85,perind: 0.85),
    SkillsModel(title: 'Ajax', percentage: 70,perind: 0.70),
  ];

}
