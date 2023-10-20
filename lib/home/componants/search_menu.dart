import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 45,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        onTap: () {
          print('Hi');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  shape: BoxShape.circle),
            ),
            const SizedBox(width: 1),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  shape: BoxShape.circle),
            ),
            const SizedBox(width: 1),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  shape: BoxShape.circle),
            )
          ],
        ),
      ),
    );
  }
}
