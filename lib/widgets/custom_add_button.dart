import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                 height: 50.w,
                width: 45.67.w,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
      
                ),
      child: IconButton(
        onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,size: 32.sp,),
        ),
    );
  }
}