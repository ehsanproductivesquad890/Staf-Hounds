import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';
import '../../utils/common_widgets/grey_line.dart';

class GenderTF extends StatelessWidget {
  const GenderTF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
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
                return SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Male',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 18),
                      ),
                      const GreyLine(),
                      Text(
                        'Female',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 18),
                      ),
                      const GreyLine(),
                      Text(
                        'Other',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.female,
              color: secondaryColor,
              size: 25,
            ),
            hintText: 'Gender',
          ),
        ),
      ],
    );
  }
}
