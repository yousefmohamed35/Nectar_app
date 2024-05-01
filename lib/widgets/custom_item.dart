import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/custom_add_button.dart';
import 'package:nectarapp/widgets/custom_category_image.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 173.32.w,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const CustomCategoryImage(),  
          SizedBox(height: 20.h,),
          Text('Organic Banana',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,),),
          Text('7pcs, priceg',style: TextStyle(fontSize: 14.sp,color: kSecondaryColor),),
            SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$4.99',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
              const  CustomAddButton(),
            ]
          ),
        ]
      ),
    );
  }
}




