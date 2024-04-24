import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color:kSecondaryColor,
      fontSize: 16.sp,
      fontFamily: 'Gilroy-Medium',
    ),
    );
  }
}
