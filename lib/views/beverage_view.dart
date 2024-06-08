import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_item.dart';
import 'package:nectarapp/widgets/header_text.dart';

class BeverageView extends StatelessWidget {
  const BeverageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        centerTitle: true,
        title: const HeaderText(text: 'Beverages'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon:  Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 24.sp,
          ),
        ),
        actions: [
        Padding(
          padding:  EdgeInsets.all(8.0.sp),
          child: Image.asset('assets/images/pagefilter.png',),
        )
        ],
      ),

      body: Padding(
        padding:  EdgeInsets.only(right: 8.sp, left: 16.sp, top: 16.sp),
        child: GridView.count(
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 5.w,
          childAspectRatio: 0.68, 
          crossAxisCount: 2,
            
        children: List.generate(15, (index) =>const CustomItemCard()),
        ),
      ),
    );
  }
}
