import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_check_box_list.dart';
import 'package:nectarapp/widgets/header_text.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.sp),
            topRight: Radius.circular(40.sp)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.sp,vertical: 32.sp),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const   HeaderText(
                  text: 'Categories',
                ),
                SizedBox(height: 20.h,),
              const  CustomCheckListBox(text: 'Eggs',),
              const  CustomCheckListBox(text: 'Noodles&Pasta',),
              const  CustomCheckListBox(text: 'Chips&Crisps',),
              const  CustomCheckListBox(text: 'Fast Foods',),
              SizedBox(height: 20.h,),
              const  HeaderText(text: 'Brand'),
                SizedBox(height: 20.h,),
              const  CustomCheckListBox(text: 'Individual Callection'),
              const  CustomCheckListBox(text: 'Cocola'),
              const  CustomCheckListBox(text: 'Ifad'),
              const  CustomCheckListBox(text: 'Kazi Farmas'),
                  SizedBox(height: 250.h,),
              ]),
        ),
      ),
    );
  }
}

