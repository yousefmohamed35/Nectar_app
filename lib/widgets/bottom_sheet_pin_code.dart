import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/pin_code.dart';

class BottomSheetPinCode extends StatelessWidget {
  const BottomSheetPinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: 1.sp*48,
        left: 1.sp*16,
        right: 1.sp*16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 32,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  HeaderText(text: 'Reset Password'),
            SizedBox(height: 1.sp * 10,),
          const  DescriptionText(text: 'Enter new password for your account ro reset password'),
            SizedBox(height: 1.sp * 30,),
            Text('Enter the 6 digits code',style: TextStyle(color: const Color(0xff7C7C7C),fontSize: 1.sp * 16,fontFamily: 'Gilroy-Medium',fontWeight: FontWeight.w600),),
            SizedBox(height: 1.sp * 20,),
          const  PinCode(),
            SizedBox(height: 1.sp * 40,),
            const CustomButton(text: 'reset password',),
          ]
        ),
      ),
    );
  }
}