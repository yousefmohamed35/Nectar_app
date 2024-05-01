import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryImage extends StatelessWidget {
  const CustomCategoryImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/banana.png',height: 79.43.h,width: 100.h,),
      ],
    );
  }
}