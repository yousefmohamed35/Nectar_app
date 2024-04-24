import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/description_text.dart';

class ResetPasswordAcceptBody extends StatelessWidget {
  const ResetPasswordAcceptBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
        SizedBox(height: 250.h,),
          Image.asset(
            'assets/images/accept.png',
            height: 200.sp,
            width: 200.sp,
          ),
          SizedBox(height: 30.sp),
          Text('Congratulations',style: TextStyle(fontSize: 1.sp * 32,fontWeight: FontWeight.w800),),
          SizedBox(height: 30.sp),
        const  DescriptionText(text: 'Your change Password Is Success',),
        SizedBox(height: 10.sp),
        const DescriptionText(text: 'Welcome to our app',),
        ]
      ),
    );
  }
}