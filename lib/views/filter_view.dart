
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_check_box_list.dart';
import 'package:nectarapp/widgets/header_text.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 32.sp,
            color: Colors.black,
          ),
        ),
        title: const HeaderText(text: 'Filters'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Container(
          color: const Color(0xffF2F3F2),
          padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 16.sp),
          child: const CustomButton(
            text: 'Apply filter',
          )),
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.sp),
              topRight: Radius.circular(40.sp)),
        ),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText(
                text: 'Categories',
              ),
              Row(
                children: [
                const  CustomCheckListBox(),
                  Text('Eggs',style: TextStyle(color: Colors.black,fontSize: 20.sp),),
                ],
              )
              
            ]),
      ),
    );
  }
}

