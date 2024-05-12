import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_cart_widget.dart';

import 'package:nectarapp/widgets/header_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        title: const HeaderText(text: 'Cart'),
        centerTitle: true,
        bottom: PreferredSize(preferredSize: Size.fromHeight(30.h), child: Container(
          color:const Color(0xffE2E2E2),
          height: 1,
        ),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.sp),
        child: ListView(
          children: List.generate(10, (index) =>const CustomCartWidget())
          
        ),
      ),
    );
  }
}