import 'package:flutter/material.dart';
import 'package:staff_hound/utils/common_widgets/grey_line.dart';

import '../app_theme/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      required this.field,
      required this.fieldIcon,
      required this.controller})
      : super(key: key);
  final String field;
  final IconData fieldIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          field,
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
              fieldIcon,
              color: secondaryColor,
              size: 25,
            ),
            hintText: field,
          ),
        ),
      ],
    );
  }
}
