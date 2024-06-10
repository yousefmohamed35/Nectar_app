import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class AcceptOrderView extends StatelessWidget {
  const AcceptOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundimage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/accept.png',
                    height: 240.h,
                    width: 269.w,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const HeaderText(text: 'Your Order has been'),
              const HeaderText(text: 'accepted'),
              SizedBox(
                height: 10.h,
              ),
              const DescriptionText(
                  text: 'Your items has been placcd and is on'),
              const DescriptionText(text: 'it’s way to being processed'),
              SizedBox(
                height: 110.h,
              ),
              const CustomButton(text: 'Track Order'),
              TextButton(
                onPressed: () {},
                child: HeaderText(text: 'back to home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
