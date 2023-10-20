import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/modals/filteredModel.dart';
import 'package:staff_hound/home/componants/app_head.dart';

class Notifications extends StatefulWidget {
  Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> myList = ['All', 'New Jobs', 'Mentions'];

  List<FilterModel> filterList = [
    FilterModel(
        color: Colors.amber,
        title: 'Software Engineer',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: 'Today',
        range: '\$5K - \$10K'),
    FilterModel(
        color: Colors.pink,
        title: 'Front-end Developer',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: '2H Ago',
        range: '\$5K - \$10K'),
    FilterModel(
        color: Colors.blue,
        title: 'Front-end Flutter Developer',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: '2H Ago',
        range: '\$5K - \$10K'),
    FilterModel(
        color: Colors.red,
        title: 'Software Engineer',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: '2H Ago',
        range: '\$5K - \$10K'),
    FilterModel(
        color: Colors.cyan,
        title: 'Web-Developer',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: '2H Ago',
        range: '\$5K - \$10K'),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    Container(
                      height: media.height * 0.05,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Material(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                elevation: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selectedIndex == index
                                            ? AppColors.styBlue
                                            : AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        '${myList[index]}',
                                        style: TextStyle(
                                          color: selectedIndex != index
                                              ? AppColors.styBlue
                                              : AppColors.white,
                                        ),
                                      ),
                                    ))),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    Divider(
                      thickness: 3.5,
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                color: AppColors.gray,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: media.width * 0.02,
                                          ),
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: AppColors.styBlue,
                                          ),
                                          SizedBox(
                                            width: media.width * 0.02,
                                          ),
                                          CircleAvatar(
                                            radius: 28,
                                            backgroundColor: AppColors.black,
                                            child: Text(
                                              'Logo',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              'Graphic Designer: , '),
                                                      TextSpan(
                                                        text:
                                                            '1 opportunity in USA',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      TextSpan(
                                                        text: 'USA',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 5),
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          border: Border.all(
                                                              color: AppColors
                                                                  .black)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 10,
                                                                vertical: 4),
                                                        child: Text('View Job'),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          BottomSheet(context,media);
                                        },
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '3h',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Icon(Icons.more_vert)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
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
    );
  }

  Future<dynamic> BottomSheet(BuildContext context ,Size media) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height: media.height*0.02,),
              ListTile(
                leading: Icon(Icons.delete_sharp,color: AppColors.darkBlue,),
                title: Text('Delete',style: TextStyle(
                  color: AppColors.darkBlue
                ),),
                subtitle: Text('Delete this notification',style: TextStyle(
                  color: AppColors.darkBlue
                ),),
              ),
              ListTile(
                leading: Icon(Icons.notifications_off_outlined,color: AppColors.darkBlue,),
                title: Text('Turn off',style: TextStyle(
                  color: AppColors.darkBlue
                ),),
                subtitle: Text('Stop receiving notifications',style: TextStyle(
                  color: AppColors.darkBlue
                ),),
              ),
              ListTile(
                leading: Icon(Icons.settings,color: AppColors.darkBlue,),
                title: Text('View Settings',style: TextStyle(
                  color: AppColors.darkBlue
                ),),
                
              )
            ],
          ),
        );
      },
    );
  }

  int selectedIndex = 0;
}
