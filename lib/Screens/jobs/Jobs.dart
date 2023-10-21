import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/modals/filteredModel.dart';
import 'package:staff_hound/home/componants/app_head.dart';

class Jobs extends StatefulWidget {
  Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // ... rest of your code

  List<FilterModel> filterList = [
    FilterModel(
        title: 'Available',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: 'Today',
        range: '\$5K - \$10K'),
    FilterModel(
        title: 'Applied',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: '2H Ago',
        range: '\$5K - \$10K'),
    FilterModel(
        title: 'Offers',
        loc: 'Lahore Pakistan',
        duration: 'Full Time',
        day: '2H Ago',
        range: '\$5K - \$10K'),
    FilterModel(
        title: 'Favourite',
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Container(
                          height: media.height * 0.07,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Records(),
                        )
                        
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  int selectedIndex = 0;
  ScrollController _scrollController = ScrollController();
}





class Records extends StatefulWidget {
  const Records({Key? key}) : super(key: key);

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 200,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              indicatorColor: AppColors.styBlue, // Set the active tab color to green
              unselectedLabelColor: Colors.grey, // Set the inactive tab color to grey
              labelColor: AppColors.styBlue,
              tabs: [
                Tab(
                  child: Text(
                    'Available',
                    
                  ),
                ),
                Tab(
                  child: Text(
                    'Applied',
                    
                  ),
                ),
                Tab(
                  child: Text(
                    'Offers',
                    
                  ),
                ),
                Tab(
                  child: Text(
                    'Favourite',
                    
                  ),
                ),
              ],
            )),
        body: TabBarView(children: [
          Center(child: Text('Screen1')),
          Center(child: Text('Screen2')),
          Center(child: Text('Screen3')),
          Center(child: Text('Screen4')),
        ]),
      ));
}
