import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomBoxGroceries extends StatelessWidget {
  const CustomBoxGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(right: 16.sp),
          padding: EdgeInsets.all(16.sp),
          decoration: BoxDecoration(color: Colors.red,
          borderRadius: BorderRadius.circular(20)
          ),
          width: 248.19,
          child: Row(
            children: [
              Image.asset('assets/images/nuts.png',height: 72.h,width: 72.w,),
              SizedBox(width: 15.w,),
            Text('Pulses',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),)
            ],
          ),
        );
      }),
    );
  }
}
