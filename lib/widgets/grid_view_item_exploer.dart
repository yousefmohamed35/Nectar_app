import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_item_for_explore_view.dart';

class GridViewItemExploerView extends StatelessWidget {
  const GridViewItemExploerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 15.w,
      crossAxisSpacing: 15.h,
      childAspectRatio: 0.9,
      children: List.generate(10, (index) {
        return const CustomItemForExploreView();
      }),
    );
  }
}
