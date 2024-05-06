import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/custom_search_bar.dart';
import 'package:nectarapp/widgets/header_text.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const HeaderText(text: 'Find Product'),
      ),
      body: Column(
        children: [
        CustomSearchBar(),
      ],),
    );
  }
}
