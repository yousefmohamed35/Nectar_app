import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_text_field_email.dart';
import 'package:nectarapp/widgets/bottom_sheet_pin_code.dart';
import 'package:nectarapp/widgets/custom_app_bar.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 16.sp, vertical: 32.sp),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/backgroundimage.png',
              ),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/carrot.png'),
                ],
              ),
              SizedBox(
                height:  220.h,
              ),
              const HeaderText(
                text: 'Forget Password',
              ),
              SizedBox(
                height: 10.h,
              ),
              const DescriptionText(
                  text:
                      'Enter your email for verification process we will send 5 digits code to your email'),
              SizedBox(
                height:  30.h,
              ),
              const CustomTextFieldEmail(
                text: 'Email',
              ),
              SizedBox(
                height:  60.h,
              ),
              CustomButton(
                onTap: () {
                  showModalBottomSheet(
                    constraints:const BoxConstraints() ,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                    ),
                      context: context,
                      builder: (context) {
                        return const BottomSheetPinCode();
                      });
                },
                text: 'continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
