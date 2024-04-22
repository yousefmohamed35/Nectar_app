import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/description_text.dart';

class CustomTextFieldEmail extends StatelessWidget {
  const CustomTextFieldEmail({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: DescriptionText(text: text)),
        SizedBox(
          height: 50.sp,
          child: TextFormField(
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE2E2E2)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
