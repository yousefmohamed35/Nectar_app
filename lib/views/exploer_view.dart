import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/exploer_view_body.dart';
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
      body:const ExploerViewBody(),
    );
  }
}

