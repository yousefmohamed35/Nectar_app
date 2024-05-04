import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomAddAndDecreaseItem extends StatelessWidget {
  const CustomAddAndDecreaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.minimize,size: 48.sp,color: Colors.grey,),
                      SizedBox(height: 30.h,),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5.sp),
                    padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text('1',style: TextStyle(fontSize: 20.sp),),
                  ),
                  Icon(Icons.add,size: 32.sp,color: kPrimaryColor,),
                ],
              );
  }
}