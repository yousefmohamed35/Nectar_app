import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        body: ListView(
          children: [
            Row(
              children: [
               Image.asset('assets/images/Sprite.png')
              ],
            )
          ],
        ),
    );
  }
}
