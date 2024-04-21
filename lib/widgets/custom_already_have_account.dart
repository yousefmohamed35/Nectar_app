import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';

class CustomAlreadyHaveAccount extends StatelessWidget {
  const CustomAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Already have an account?'),
        Text('Signin',style: TextStyle(color: kPrimaryColor),),
      ],
    );
  }
}