import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
      child: GridView.count(
       crossAxisCount: 2,
      mainAxisSpacing: 15.h,
      crossAxisSpacing: 5.w,
      childAspectRatio: 0.65,
      children:List.generate(13, (index) =>const CustomItemCard()),
      ),
    );
  }
}