import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            fontSize: 1.sp*16,
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w600,
          )),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInView(),));
          },
          child: Text('Signin',style: TextStyle(
              color: kPrimaryColor,
              fontSize: 1.sp*16,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w600,
              ),),
        ),
      ],
    );
  }
}