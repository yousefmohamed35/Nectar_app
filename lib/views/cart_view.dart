import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/views/reset_password_accept.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_cart_widget.dart';
import 'package:nectarapp/widgets/custom_text_field_email.dart';
import 'package:nectarapp/widgets/custom_text_field_password.dart';
import 'package:nectarapp/widgets/description_text.dart';

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
            CustomButton(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                          left: 16,
                          top: 24,
                          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const HeaderText(
                                      text: 'Checkout',
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.black,
                                          size: 32.sp,
                                        ))
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Dlivery',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                       const HeaderText(text: 'Select Method'),
                                        IconButton(
                                            onPressed: () {},
                                            icon:const Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.black,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                                CustomButton(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ResetPasswordAccept(),
                                        ));
                                  },
                                  text: 'Place Order',
                                ),
                              ]),
                        ),
                      );
                    });
              },
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
                    color: const Color(0xff489E67),
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
