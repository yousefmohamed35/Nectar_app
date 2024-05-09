import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_check_box_list.dart';
import 'package:nectarapp/widgets/description_text.dart';
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
      body: FilterViewBody(),
    );
  }
}

