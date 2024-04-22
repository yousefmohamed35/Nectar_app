import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/Custom_text_field.dart';
import 'package:nectarapp/widgets/custom_already_have_account.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_service_and_policy_text.dart';
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
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
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
                SizedBox(height: 1.sp *50,),
              Align(child: Image.asset('assets/images/carrot.png')),
              SizedBox(height: 1.sp *120,),
            const  HeaderText( text: 'Sign Up',),
              SizedBox(height: 1.sp * 5,),
            const  DescriptionText(text: 'Enter your credentials to continue'),
              SizedBox(height: 1.sp * 50,),
            const  CustomTextField(text: 'Username',),
              SizedBox(
                height: 1.sp * 10,
              ),
            const  CustomTextField(text: 'Email',),
              SizedBox(
                height: 1.sp * 10,
              ),
              CustomTextField(
                isObscure: isObscure,
                text: 'Password',
              onPressed: () {
              isObscure = !isObscure;
              setState(() {
                
              });
            },),
            SizedBox(height: 1.sp * 10,),
            const  CustomServiceAndPolicyText(),
              SizedBox(height: 1.sp * 40,),
            const  CustomButton(text: 'Sign Up'),
              SizedBox(height: 1.sp * 20,),
            const  CustomAlreadyHaveAccount(),
                
                
            ],
          ),
        ),
      ),
    );
  }
}