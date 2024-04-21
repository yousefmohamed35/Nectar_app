import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomServiceAndPolicyText extends StatelessWidget {
  const CustomServiceAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('By continuing you agree to our ',style: TextStyle(color: const Color(0xff7C7C7C),fontSize: 1.sp * 14),),
            Text('Terms of Service',style: TextStyle(color: kPrimaryColor,fontSize: 1.sp * 14),),
          ],
        ),
        Row(
          children: [
            Text('and ',style: TextStyle(color: const Color(0xff7C7C7C),fontSize: 1.sp * 14),),
            Text('Privacy Policy',style: TextStyle(color: kPrimaryColor,fontSize: 1.sp * 14),),
          ],
        ),
      ],
    );
  }
}