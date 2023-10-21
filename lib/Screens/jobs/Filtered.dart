import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';
import 'package:staff_hound/Widgets/EmptyAppBar.dart';
import 'package:staff_hound/modals/filteredModel.dart';
import 'package:staff_hound/home/componants/app_head.dart';

class Filtered extends StatelessWidget {
   Filtered({super.key});
   List<FilterModel> filterList=[
    FilterModel(color: Colors.amber,title: 'Software Engineer',loc: 'Lahore Pakistan',duration: 'Full Time',day: 'Today',range: '\$5K - \$10K',image: 'images/C1.jpeg'),
    FilterModel(color: Colors.pink,title: 'Front-end Developer',loc: 'Lahore Pakistan',duration: 'Full Time',day: '2H Ago',range: '\$5K - \$10K',image: 'images/C2.jpeg'),
    FilterModel(color: Colors.blue,title: 'Front-end Flutter Developer',loc: 'Lahore Pakistan',duration: 'Full Time',day: '2H Ago',range: '\$5K - \$10K',image: 'images/C4.jpeg'),
    FilterModel(color: Colors.red,title: 'Software Engineer',loc: 'Lahore Pakistan',duration: 'Full Time',day: '2H Ago',range: '\$5K - \$10K',image: 'images/C5.jpeg'),
    FilterModel(color: Colors.cyan,title: 'Web-Developer',loc: 'Lahore Pakistan',duration: 'Full Time',day: '2H Ago',range: '\$5K - \$10K',image: 'images/C6.png'),
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
            
          emptyAppbar(media: media),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 10),
              child: Text(
                'Filtered Jobs',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white),
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )),
                child:  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: media.height*0.85,
                      child: ListView.builder(
                          itemCount: filterList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){
                                
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: media.height * 0.07,
                                            width: media.width * 0.17,
                                            decoration: BoxDecoration(
                                               image: DecorationImage(image: AssetImage('${filterList[index].image}'),fit: BoxFit.cover),
                                                borderRadius: BorderRadius.circular(5),
                                                // color:filterList[index].color
                                                ),
                                          ),
                                          SizedBox(height: media.height*0.02,)
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: media.width*0.73,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    '${filterList[index].title}',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: AppColors.darkBlue),
                                                  ),
                                                  // SvgPicture.asset('asset/fontisto_favorite.svg')
                                                ],
                                              ),
                                            ),
                                          SizedBox(height: media.height*0.01,),
                                            Container(
                                              width: media.width*0.73,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    '${filterList[index].loc}',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        color: AppColors.darkBlue),
                                                  ),
                                                  Text(
                                                    '${filterList[index].day}',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        color: AppColors.darkBlue),
                                                  ),
                                      
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: media.height*0.01,),
                                            Container(
                                              width: media.width*0.73,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                     
                                                        borderRadius:
                                                            BorderRadius.circular(3),
                                                        color: AppColors.gray),
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(
                                                          vertical: 3, horizontal: 5),
                                                      child: Text(
                                                        '${filterList[index].duration}',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w600,
                                                            color: AppColors.darkBlue),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                        '${filterList[index].range}',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w600,
                                                            color: AppColors.darkBlue),
                                                      ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
