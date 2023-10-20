import 'package:flutter/material.dart';
import 'package:staff_hound/app_theme/constants.dart';
import 'package:staff_hound/sign_up/create_account.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
                color: secondaryColor,
                size: 25,
              ),
              hintText: 'Email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Password',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: secondaryColor,
                size: 25,
              ),
              prefixIcon: Icon(
                Icons.key,
                color: secondaryColor,
                size: 25,
              ),
              hintText: 'Password',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: secondaryColor,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Remember me',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: secondaryColor),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccount()),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: secondaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text('Sign In'))),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
