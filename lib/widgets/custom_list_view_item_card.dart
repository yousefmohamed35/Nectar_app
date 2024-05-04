import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_item.dart';

class CustomListViewItemCard extends StatelessWidget {
  const CustomListViewItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 281.sp,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: ((context, index) {
        return index==0? const Padding(
          padding:  EdgeInsets.only(left: 16),
          child:  CustomItemCard(),
        ): const CustomItemCard();
      })),
    );
  }
}
