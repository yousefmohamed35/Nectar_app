import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectarapp/constants.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
          decoration: const BoxDecoration(
            color: kSecondaryColor
          ),
            ),
          ),
        )
      ]
    );
  }
}