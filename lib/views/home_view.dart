import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/banar_image.dart';
import 'package:nectarapp/widgets/custom_list_view_item_card.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';
import 'package:nectarapp/widgets/the_title_of_category_section.dart';

class HomeView extends StatelessWidget{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 48.sp),
        child: SingleChildScrollView(
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
          const TheTitleOfCategorySection(hText: 'Exclusive Offer',),
          SizedBox(height: 10.h,),
          const  CustomListViewItemCard(),
          SizedBox(height: 20.h,),
            const TheTitleOfCategorySection(hText: 'Best Selling',),
            SizedBox(height: 10.h,),
            const  CustomListViewItemCard(),
          SizedBox(height: 20.h,),
          const TheTitleOfCategorySection(hText: 'Best Selling',),
            SizedBox(height: 10.h,),
            const  CustomListViewItemCard(),
          SizedBox(height: 20.h,),
          ]),
        ),
      ),
    );
  }
}

