import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/views/sign_in_view.dart';

class CustomAlreadyHaveAccount extends StatelessWidget {
  const CustomAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Already have an account?',style: TextStyle(
            fontSize: 16.sp,
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w600,
          )),
        TextButton( 
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero),
      child:  Text('Signin',style: TextStyle(
            color: kPrimaryColor,
            fontSize: 16.sp,
            fontFamily: 'Gilroy-Medium',
            fontWeight: FontWeight.w600,
            ),), onPressed: () {  
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInView(),));
            },),
      ],
    );
  }
}