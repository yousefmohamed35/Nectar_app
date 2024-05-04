import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/header_text.dart';

class NutitionsSection extends StatelessWidget {
  const NutitionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    const  HeaderText(text: 'Nutritions',),
      Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.sp,vertical: 5.sp),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('100 g',style: TextStyle(fontSize: 14.sp,color: kSecondaryColor),),
          ),
          Icon(Icons.chevron_right,size: 48.sp,),
        ],
      ),
      ]
    );
  }
}