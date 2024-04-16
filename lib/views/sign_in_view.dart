import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/Custom_text_field.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_text_button.dart';
import 'package:nectarapp/widgets/custom_text_dont_have_account.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signimagebackground.jpg',),
            fit: BoxFit.fill
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  HeaderText( text: 'Loging',),
            SizedBox(height: 1.sp * 5,),
          const  DescriptionText(text: 'Enter your emails and password'),
            SizedBox(height: 1.sp * 20,),
          const  CustomTextField(text: 'Email',),
            SizedBox(
              height: 1.sp * 20,
            ),
          const  CustomTextField(text: 'Password',),
          const  CustomTextButtonForgetPassword(),
            SizedBox(height: 1.sp * 10,),
          const  CustomButton(text: 'log in'),
            SizedBox(height: 1.sp * 20,),
          const  CustomDontHaveAccount(),
      
      
          ],
        ),
      ),
    );
  }
}