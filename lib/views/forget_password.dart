import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/Custom_text_field.dart';
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
            EdgeInsets.symmetric(horizontal: 1.sp * 16, vertical: 1.sp * 32),
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
                height: 1.sp * 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/carrot.png'),
                ],
              ),
              SizedBox(
                height: 1.sp * 220,
              ),
              const HeaderText(
                text: 'Forget Password',
              ),
              SizedBox(
                height: 1.sp * 10,
              ),
              const DescriptionText(
                  text:
                      'Enter your email for verification process we will send 5 digits code to your email'),
              SizedBox(
                height: 1.sp * 30,
              ),
              const CustomTextField(
                text: 'Email',
              ),
              SizedBox(
                height: 1.sp * 60,
              ),
              CustomButton(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
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
