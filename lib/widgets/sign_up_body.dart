import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_text_field_email.dart';
import 'package:nectarapp/widgets/custom_already_have_account.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_service_and_policy_text.dart';
import 'package:nectarapp/widgets/custom_text_field_password.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignUpBody> {
  var isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.only(top: 48.sp, left: 16.sp, right: 16.sp),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signimagebackground.jpg',),
            fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: 50.h,),
              Align(child: Image.asset('assets/images/carrot.png')),
              SizedBox(height: 120.h,),
            const  HeaderText( text: 'Sign Up',),
              SizedBox(height:  5.h,),
            const  DescriptionText(text: 'Enter your credentials to continue'),
              SizedBox(height:  50.h,),
            const  CustomTextFieldEmail(text: 'Username',),
              SizedBox(
                height: 10.h,
              ),
                const  CustomTextFieldEmail(text: 'phone Number',),
              SizedBox(
                height: 10.h,
              ),
            const  CustomTextFieldEmail(text: 'Email',),
              SizedBox(
                height:  10.h,
              ),
                const  CustomTextFieldForPassword(
                text: 'Password',
              ),
            SizedBox(height:  10.h,),
              const  CustomTextFieldForPassword(
                text: 'confirm Password',
              ),
            const  CustomServiceAndPolicyText(),
              SizedBox(height:  40.h,),
            const  CustomButton(text: 'Sign Up'),
              SizedBox(height: 20.h,),
            const  CustomAlreadyHaveAccount(),
                
                
            ],
          ),
        ),
      ),
    );
  }
}