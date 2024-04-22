import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/views/sign_up_view.dart';

class CustomDontHaveAccount extends StatelessWidget {
  const CustomDontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dont have an account?',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w600,
            )),
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpView(),
              ),
            );
          },
          child: Text(
            'SignUp',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 16.sp,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
