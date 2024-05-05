import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/header_text.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    const  HeaderText(text: 'Review',),
      Row(
        children: [
          Row(children: [
           Icon(Icons.star,size: 24.sp,color: Colors.amber,),
           Icon(Icons.star,size: 24.sp,color: Colors.amber,),
           Icon(Icons.star,size: 24.sp,color: Colors.amber,),
           Icon(Icons.star,size: 24.sp,color: Colors.amber,),
           Icon(Icons.star,size: 24.sp,color: Colors.amber,),
          ],),
          Icon(Icons.chevron_right,size: 48.sp,),
        ],
      ),
      ]
    );
  }
}