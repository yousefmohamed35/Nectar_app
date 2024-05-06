import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_box_groceries.dart';
class CustomListViewBoxGroceries extends StatelessWidget {
  const CustomListViewBoxGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
        return index==0?Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: CustomBoxGroceries(index: index,),
        ):  CustomBoxGroceries(index: index,);
      }),
    );
  }
}

