import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/banar_image.dart';
import 'package:nectarapp/widgets/custom_item.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';
import 'package:nectarapp/widgets/the_title_of_category_section.dart';

class HomeView extends StatelessWidget{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 48.sp),
        child: Column(children: [
          Image.asset(
            'assets/images/carrot.png',
            height: 50.h,
            width: 50.w,
          ),
          SizedBox(
            height: 50.h,
          ),
          const CustomSearchBar(),
          const BanarImage(),
          SizedBox(
            height: 20.h,
          ),
        const TheTitleOfCategorySection(),
          const CustomItemCard(),
        ]),
      ),
    );
  }
}

