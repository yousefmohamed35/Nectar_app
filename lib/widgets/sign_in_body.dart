import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_text_field_email.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_text_button.dart';
import 'package:nectarapp/widgets/custom_text_dont_have_account.dart';
import 'package:nectarapp/widgets/custom_text_field_password.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top: 48.sp, left: 16.sp, right: 16.sp),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/signimagebackground.jpg',
            ),
            fit: BoxFit.fill),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:  50.h,
            ),
            Align(child: Image.asset('assets/images/carrot.png')),
            SizedBox(
              height:  150.h,
            ),
            const HeaderText(
              text: 'Loging',
            ),
            SizedBox(
              height:  5.h,
            ),
            const DescriptionText(text: 'Enter your emails and password'),
            SizedBox(
              height:  20.h,
            ),
            const CustomTextFieldEmail(
              text: 'Email',
            ),
            SizedBox(
              height:  10.h,
            ),
         const    CustomTextFieldForPassword(
              text: 'Password',
            ),
            const CustomTextButtonForgetPassword(),
            SizedBox(
              height: 10.h,
            ),
            const CustomButton(text: 'log in'),
            SizedBox(
              height:  20.h,
            ),
            const CustomDontHaveAccount(),
          ],
        ),
      ),
    );
  }
}
