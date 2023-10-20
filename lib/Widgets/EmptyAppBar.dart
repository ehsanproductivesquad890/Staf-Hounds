import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:staff_hound/Common/AppColor.dart';

class emptyAppbar extends StatelessWidget {
  const emptyAppbar({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
           SizedBox(
                  height: media.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'images/Menu.svg',
                      color: AppColors.white,
                    ),
                    Icon(Icons.arrow_back_rounded, color: AppColors.white),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.01,
                ),
                Divider(
                  color: AppColors.white,
                  thickness: 1,
                  
                ),
                
        ],
      ),
    );
  }
}