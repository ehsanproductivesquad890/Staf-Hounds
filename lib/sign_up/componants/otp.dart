import '../../home/home.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:staff_hound/app_theme/constants.dart';
import 'package:staff_hound/Widgets/BottomNavBarCustom.dart';
import 'package:staff_hound/sign_up/componants/blue_line.dart';



class OTP extends StatelessWidget {
  const OTP({Key? key, required this.option}) : super(key: key);
  final String option;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                const BlueLine(),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Please Check your $option',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: OTPTextField(
                    
                    onChanged: (value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBarCustom(),
                          ));
                    },
                    length: 4,
                    width: double.infinity,
                    
                    outlineBorderRadius: 5,
                    fieldWidth: 60,
                    style: TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceBetween,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text('Retry sent code after 30 seconds',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: greyColor))
              ],
            ),
          )),
    );
  }
}
