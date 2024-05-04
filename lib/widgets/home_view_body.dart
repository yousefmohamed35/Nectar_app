import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/banar_image.dart';
import 'package:nectarapp/widgets/custom_home_app_bar.dart';
import 'package:nectarapp/widgets/custom_list_view_box_groceries.dart';
import 'package:nectarapp/widgets/custom_list_view_item_card.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';
import 'package:nectarapp/widgets/the_title_of_category_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const CustomHomeAppBar(),
        ];
      },
      body: Scaffold(
        body: Column(
          children: [
          const  Padding(
              padding:  EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 10),
              child:  CustomSearchBar(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const BanarImage(),
                    const TheTitleOfCategorySection(
                      hText: 'Exclusive Offer',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomListViewItemCard(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const TheTitleOfCategorySection(
                      hText: 'Best Selling',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomListViewItemCard(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const TheTitleOfCategorySection(
                      hText: 'Category',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomListViewBoxGroceries(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomListViewItemCard(),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
