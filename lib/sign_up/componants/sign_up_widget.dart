import 'package:flutter/material.dart';
import 'package:staff_hound/sign_up/componants/email_tf.dart';
import 'package:staff_hound/sign_up/componants/gender_tf.dart';
import 'package:staff_hound/sign_up/componants/name_tf.dart';
import 'package:staff_hound/sign_up/componants/password_tf.dart';
import 'package:staff_hound/sign_up/componants/phone_tf.dart';
import 'package:staff_hound/sign_up/componants/sign_up_btn.dart';

import '../../app_theme/constants.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EmailTF(),
          const SizedBox(
            height: 20,
          ),
          const NameTF(),
          const SizedBox(
            height: 20,
          ),
          const PasswordTF(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Confirm Password',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: secondaryColor,
                size: 25,
              ),
              prefixIcon: Icon(
                Icons.email_outlined,
                color: secondaryColor,
                size: 25,
              ),
              hintText: 'Confirm Password',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const GenderTF(),
          const SizedBox(
            height: 20,
          ),
          PhoneTF(),
          const SizedBox(
            height: 20,
          ),
          const SignUpBtn(),
        ],
      ),
    );
  }
}
