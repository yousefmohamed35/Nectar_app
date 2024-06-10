import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/views/reset_password_accept.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/custom_cart_widget.dart';
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
                modelBottomSheet(context);
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

  Future<dynamic> modelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const RowCheckout(
                      text: 'Select Method',
                      title: 'Delivery',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const RowCheckout(
                      title: 'Payment',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const RowCheckout(
                      text: 'Pick discount',
                      title: 'Promo Code',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const RowCheckout(
                      text: '\$13.95',
                      title: 'Total Cost',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const DescriptionText(
                        text: 'By placing an order you agree to our'),
                    Row(
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize:const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Terms',
                              style: TextStyle(color: Colors.black),
                            )),
                        const DescriptionText(
                          text: 'And ',
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Conditions',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomButton(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPasswordAccept(),
                            ));
                      },
                      text: 'Place Order',
                    ),
                  ]),
            ),
          );
        });
  }
}

class RowCheckout extends StatelessWidget {
  const RowCheckout({
    super.key,
    required this.title,
    this.text,
    this.iconData,
  });
  final String? text;
  final IconData? iconData;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        Row(
          children: [
            title == 'Payment'
                ? Image.asset('assets/images/card.png')
                : HeaderText(text: text!),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
          ],
        ),
      ],
    );
  }
}
