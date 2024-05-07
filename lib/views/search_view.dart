import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_item.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      scrolledUnderElevation: 3,
      title: const CustomSearchBar(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Image.asset('assets/images/pagefilter.png'),
        )
      ],
     ),
     body: SearchViewBody(),
    );
  }
}

