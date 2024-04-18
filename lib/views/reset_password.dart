import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/Custom_text_field.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/pin_code.dart';
import 'package:nectarapp/widgets/reset_password_header.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
      const  Expanded(
          flex: 1,
          child:  ResetPasswordHeader()
          ),
         Expanded(
           flex: 3,
           child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10.0,
                  spreadRadius: 10
                )
              ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.sp*16,vertical: 1.sp*48),
              child:  SingleChildScrollView(
                physics:const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              const HeaderText(text: 'Reset Password'),
                 SizedBox(height: 1.sp*10,),
              const   DescriptionText(text: 'Enter your email for verification process we will send 5 digits code to your email'),
                 SizedBox(height: 1.sp*40,),
                 Text('Enter the 5 digits code',style: TextStyle(
                  fontSize: 1.sp*16,
                  color:const Color(0xff7C7C7C),
                  fontWeight: FontWeight.bold,
                 ),),
                 SizedBox(height: 1.sp*10,),
              const   PinCode(),
                 SizedBox(height: 1.sp*35,),
                const CustomTextField(text: 'Password'),
                 SizedBox(height: 1.sp*30,),
                const CustomTextField(text: 'Confirm Password'),
                 SizedBox(height: 1.sp*40,),
                const CustomButton(text: 'Reset Password'),
                  ]
                ),
              ),
            )
           ),
         ),
        ],
      )
    );
  }
}

