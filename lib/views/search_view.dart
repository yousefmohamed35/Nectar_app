import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';
import 'package:nectarapp/widgets/search_view_body.dart';

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
     body: const SearchViewBody(),
    );
  }
}

