import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/views/reset_password_accept.dart';
import 'package:nectarapp/widgets/custom_text_field_email.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_text_field_password.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class BottomSheetConfirmEmailAndPassword extends StatelessWidget {
  const BottomSheetConfirmEmailAndPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 16,
        left: 16,
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height:  10.h,
              ),
              const HeaderText(
                text: 'Reset Password',
              ),
              SizedBox(
                height:  10.h,
              ),
              const DescriptionText(
                text: 'Enter new password for your account ro reset password',
              ),
              SizedBox(
                height: 30.h,
              ),
              const CustomTextFieldEmail(
                text: 'Email',
              ),
              SizedBox(
                height:  30.h,
              ),
            const  CustomTextFieldForPassword(
                text: 'Password',
              ),
              SizedBox(
                height:  30.h,
              ),
              const  CustomTextFieldForPassword(
                text: 'confirmed Password',
              ),
              SizedBox(
                height:  40.h,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResetPasswordAccept(),));
                },
            text: 'reset password',
              ),
            ]),
      ),
    );
  }
}
