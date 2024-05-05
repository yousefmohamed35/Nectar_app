import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomAddAndDecreaseItem extends StatelessWidget {
  const CustomAddAndDecreaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.remove,size: 32.sp,color: kPrimaryColor,)),
                  Container(
                  width: 45.67.w,
                    height: 45.67.w,
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