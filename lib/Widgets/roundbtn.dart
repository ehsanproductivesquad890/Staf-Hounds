import 'package:flutter/material.dart';






class RoundBtn extends StatelessWidget {
  String? title;
VoidCallback? onTap;
 RoundBtn({Key? key, this.onTap,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onTap,
            child: const Text('Sign Up')));
  }
}
