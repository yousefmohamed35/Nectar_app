import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_cart_widget.dart';

import 'package:nectarapp/widgets/header_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Stack(
          children: [
          const  CustomButton(
              text: 'Go to Checkout',
            ),
            Positioned(
              top: 20.h,
              right: 20.w,
              child: Container(
                alignment: Alignment.center,
                width: 60.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color:const Color(0xff489E67),
                    borderRadius: BorderRadius.circular(5.sp)),
                child: Text(
                  '\$12.96',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        scrolledUnderElevation: 3,
        title: const HeaderText(text: 'Cart'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.h),
          child: Container(
            color: const Color(0xffE2E2E2),
            height: 1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: ListView(
            children: List.generate(10, (index) => const CustomCartWidget())),
      ),
    );
  }
}
