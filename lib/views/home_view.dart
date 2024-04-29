import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.sp,vertical: 48.sp),
        child: Column(
          children: [
            Image.asset('assets/images/carrot.png',height: 50.h,width: 50.w,),
            SizedBox(height: 50.h,),
            TextField(
              decoration: InputDecoration(
              filled: true,
              labelStyle:const TextStyle(color: kSecondaryColor,fontWeight: FontWeight.w600),
                fillColor:const Color(0xffF2F3F2),
                labelText: 'Search Store',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:const BorderSide(color: Color(0xffF2F3F2)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:const BorderSide(color: Color(0xffF2F3F2)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                borderSide:const BorderSide(color:kPrimaryColor),
              ),
                prefixIcon:const Icon(Icons.search_rounded,size: 24,color: Colors.black,),
              ),
            )
          ]
        ),
      ),
    );
  }
}