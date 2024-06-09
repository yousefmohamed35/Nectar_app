import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_choosen_product_cart.dart';

class CustomCartWidget extends StatelessWidget {
  const CustomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
        SizedBox(
          height: 30.h,
        ),
        const CustomChoosenProductCard(),
        SizedBox(
          height: 30.h,
        ),
      const  Divider(),
      ]),
    );
  }
}
