import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.text});
final String text ; 
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize:26.sp,
        fontFamily: 'Gilroy-Medium',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}