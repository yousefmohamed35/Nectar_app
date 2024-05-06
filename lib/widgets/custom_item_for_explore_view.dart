import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/header_text.dart';

class CustomItemForExploreView extends StatelessWidget {
  const CustomItemForExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174.5.w,
      height: 189.11.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color:const Color(0xff53B175)),
        color: const Color(0xff53B175).withOpacity(0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('assets/images/itemimage.png',width: 102.13.w,height: 72.h,),
        SizedBox(height: 20.h,),
      const  HeaderText(text: 'Meat&Fish')
      ],),
    );
  }
}