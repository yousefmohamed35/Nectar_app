import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomAlreadyHaveAccount extends StatelessWidget {
  const CustomAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Already have an account?',style: TextStyle(
            fontSize: 1.sp*16,
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w600,
          )),
        Text('Signin',style: TextStyle(
            color: kPrimaryColor,
            fontSize: 1.sp*16,
            fontFamily: 'Gilroy-Medium',
            fontWeight: FontWeight.w600,
            ),),
      ],
    );
  }
}