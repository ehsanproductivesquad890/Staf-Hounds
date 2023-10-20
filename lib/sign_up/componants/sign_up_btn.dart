import 'blue_line.dart';
import 'package:flutter/material.dart';
import '../../app_theme/constants.dart';
import 'package:staff_hound/sign_up/componants/otp.dart';


class SignUpBtn extends StatelessWidget {
  const SignUpBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onLongPress: (){
            
          },
            onPressed: () {
              showModalBottomSheet<void>(

                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const BlueLine(),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Send OTP Through',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(fontSize: 24),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet<void>(
                                          elevation: 5,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20))),
                                          context: context,
                                          builder: (BuildContext context) {
                                            return OTP(option: 'Email');
                                          },
                                        );
                                      },
                                      child: const Text('Through Email')),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: const BorderSide(
                                              color: Colors.white),
                                          backgroundColor: Colors.white,
                                          foregroundColor: primaryColor),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet<void>(
                                          elevation: 5,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20))),
                                          context: context,
                                          builder: (BuildContext context) {
                                            return OTP(option: 'SMS');
                                          },
                                        );
                                      },
                                      child: const Text('Through SMS')),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text('Sign Up')));
  }
}
