import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/Custom_text_field.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class BottomSheetBody extends StatefulWidget {
  const BottomSheetBody({super.key});
  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  bool isObscurep = true;
  bool isObscurec = true;
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
                height: 1.sp * 10,
              ),
              const HeaderText(
                text: 'Reset Password',
              ),
              SizedBox(
                height: 1.sp * 10,
              ),
              const DescriptionText(
                text: 'Enter new password for your account ro reset password',
              ),
              SizedBox(
                height: 1.sp * 30,
              ),
              const CustomTextField(
                text: 'Email',
              ),
              SizedBox(
                height: 1.sp * 30,
              ),
              CustomTextField(
                isObscure: isObscurep,
                text: 'Password',
                onPressed: () {
                  isObscurep = !isObscurep;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 1.sp * 30,
              ),
              CustomTextField(
                isObscure: isObscurec,
                text: 'Password',
                onPressed: () {
                  isObscurec = !isObscurec;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 1.sp * 40,
              ),
              CustomButton(
            text: 'reset password',
              ),
            ]),
      ),
    );
  }
}
