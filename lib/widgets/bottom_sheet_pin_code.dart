import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/bottom_sheet.dart';
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
        top: 48.sp,
        left: 16.sp,
        right: 1.sp*16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 32,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  HeaderText(text: 'Reset Password'),
            SizedBox(height:  10.h,),
          const  DescriptionText(text: 'Enter new password for your account ro reset password'),
            SizedBox(height:30.h,),
            Text('Enter the 6 digits code',style: TextStyle(color: kSecondaryColor,fontSize: 16.sp,fontFamily: 'Gilroy-Medium',fontWeight: FontWeight.w600),),
            SizedBox(height: 20.h,),
          const  OtpScreen(),
            SizedBox(height:  40.h,),
           CustomButton(
              onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
                    ),
                      context: context,
                      builder: (context) {
                        return const BottomSheetBody();
                      });
                },
                text: 'Reset Password',
              ),
          ]
        ),
      ),
    );
  }
}