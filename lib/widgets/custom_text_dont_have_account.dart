import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';

class CustomDontHaveAccount extends StatelessWidget {
  const CustomDontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account?',
          style: TextStyle(
            fontSize: 16,
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w600,
          )
        ),
        Text('SignUp',style: TextStyle(
          color: kPrimaryColor,
          fontSize: 16,
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w600,
          ),)
      ],
    );
  }
}