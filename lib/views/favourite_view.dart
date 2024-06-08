import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        title: const HeaderText(text: 'Favourite'),
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: List.generate(
            8,
            (index) => Column(
              children: [
                SizedBox(height: 30.h),
                const CustomFavouritCard(),
                SizedBox(height: 30.h),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: const CustomButton(text: 'Add All To The Cart'),
      ),
    );
  }
}

class CustomFavouritCard extends StatelessWidget {
  const CustomFavouritCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/images/Sprite.png'),
            SizedBox(width: 30.w),
            const Column(
              children: [
                HeaderText(text: 'Sprite'),
                DescriptionText(text: '325ml, Price')
              ],
            ),
          ],
        ),
        Row(
          children: [
            const HeaderText(text: '\$1.50'),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ],
    );
  }
}
