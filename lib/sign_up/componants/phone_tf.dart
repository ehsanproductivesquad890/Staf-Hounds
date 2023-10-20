import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';
import '../../modals/flag_model.dart';
import 'blue_line.dart';

class PhoneTF extends StatelessWidget {
  PhoneTF({Key? key}) : super(key: key);
  List<FlagModel> flags = [
    FlagModel(countryName: 'USA', flagUrl: 'images/usa.png'),
    FlagModel(countryName: 'Pakistan', flagUrl: 'images/pak.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone No',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onTap: () {
            showModalBottomSheet<void>(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlueLine(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: greyColor,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              width: 200,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: greyColor,
                                  filled: true,
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: greyColor),
                                  ),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0)),
                              border: Border.all(color: greyColor),
                            ),
                            child: CloseButton(
                              color: greyColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          itemCount: flags.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Image.asset(
                                  flags[index].flagUrl,
                                  height: 60,
                                  width: 60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  flags[index].countryName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone,
              color: secondaryColor,
              size: 25,
            ),
            hintText: 'Phone No',
          ),
        ),
      ],
    );
  }
}
