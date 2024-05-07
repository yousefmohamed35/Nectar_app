import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const CustomSearchBar(),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/pagefilter.png'),
        )
      ],
     ),
     body: GridView.count(crossAxisCount: 2,
     children: [
      C
     ],
     ),
    );
  }
}