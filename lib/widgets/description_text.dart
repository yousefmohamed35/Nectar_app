import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: Color(0xff7C7C7C),
      fontSize: 1.sp * 16,
      fontFamily: 'Gilroy-Medium',
    ),
    );
  }
}
