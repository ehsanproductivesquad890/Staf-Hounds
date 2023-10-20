import '../profile/profile.dart';
import 'componants/app_foot.dart';
import 'componants/app_head.dart';
import 'componants/job_search.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/modals/HomeJobModel.dart';




class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<HomeJobModel> homeJobList = [
    HomeJobModel(icon: 'images/Card Search.svg', title: 'Suggested Job'),
    HomeJobModel(icon: 'images/Bell.svg', title: 'Notification'),
    HomeJobModel(icon: 'images/Vector.svg', title: 'Link Branches'),
    HomeJobModel(icon: 'images/Round Arrow Right Up.svg', title: '   Available\nBranches'),
    HomeJobModel(icon: 'images/Share Circle.svg', title: 'Branches\nRequest'),
    HomeJobModel(icon: 'images/Group.svg', title: 'Contract'),
    HomeJobModel(icon: 'images/history_FILL0_wght200_GRAD0_opsz24 1 (1).svg', title: 'History'),
    HomeJobModel(icon: 'images/Vector.svg', title: 'Share App'),
  ];

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return Scaffold(
      drawer: Profile(),
      body: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppHeader(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(children: [
                  const JobSearch(),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns in the grid
                        crossAxisSpacing: 3.0, // Space between columns
                        mainAxisSpacing: 7.0, // Space between rows
                        childAspectRatio: 0.9
                      ),
                      itemCount: homeJobList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Material(
                                
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                elevation: 15,
                                child: SizedBox(
                                  height: media.height*0.08,
                                  width: media.width*0.16,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('${homeJobList[index].icon}',),
                                  ))),
                                  SizedBox(height: media.height*0.01,),
                              Center(child: Text(homeJobList[index].title.toString(),style: 
                              TextStyle(
                                color: AppColors.darkBlue
                              ),)),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ]),
              ),
            ),
            // const AppFoot(),
          ],
        ),
      ),
    );
  }
}
