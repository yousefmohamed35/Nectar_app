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
            Text('By continuing you agree to our ',style: TextStyle(color:  kSecondaryColor,fontSize: 14.sp),),
            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: (){},
              child: Text('Terms of Service',style: TextStyle(color: kPrimaryColor,fontSize: 14.sp)),),
          ],
        ),
        Row(
          children: [
            Text('and ',style: TextStyle(color: kSecondaryColor,fontSize: 14.sp),),
              TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),),
              onPressed: (){},
              child:const Text('privacy policy',style: TextStyle(color: kPrimaryColor)),),
          ],
        ),
      ],
    );
  }
}