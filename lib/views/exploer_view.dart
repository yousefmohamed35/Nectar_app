import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';
import 'package:nectarapp/widgets/grid_view_item_exploer.dart';
import 'package:nectarapp/widgets/header_text.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        centerTitle: true,
        title: const HeaderText(text: 'Find Product'),
      ),
      body: ExploerViewBody(),
    );
  }
}

class ExploerViewBody extends StatelessWidget {
  const ExploerViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            const CustomSearchBar(),
            SizedBox(
              height: 20.h,
            ),
          const  GridViewItemExploerView(),
          ],
        ),
      ),
    );
  }
}

