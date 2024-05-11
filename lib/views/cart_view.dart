import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_choosen_product_cart.dart';
import 'package:nectarapp/widgets/header_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderText(text: 'Cart'),
        centerTitle: true,
        bottom: PreferredSize(preferredSize: Size.fromHeight(1), child: Container(
          color: Color(0xffE2E2E2),
          height: 1,
        ),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.sp),
        child: ListView(
          children: [
            SizedBox(height: 30.h,),
            CustomChoosenProductCard(),
            SizedBox(height: 30.h,),
            Divider(
            ),
            SizedBox(height: 30.h,),
            CustomChoosenProductCard(),
            SizedBox(height: 30.h,),
            Divider(
            
            ),
            SizedBox(height: 30.h,),
            CustomChoosenProductCard(),
            SizedBox(height: 30.h,),
            Divider(
              
            ),
            SizedBox(height: 30.h,),
            CustomChoosenProductCard(),
            SizedBox(height: 30.h,),
            Divider(
              
            ),
            SizedBox(height: 30.h,),
            CustomChoosenProductCard(),
            SizedBox(height: 30.h,),
          const  Divider(
            
            ),
          ]
        ),
      ),
    );
  }
}