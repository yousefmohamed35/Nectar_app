import 'package:flutter/material.dart';
class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      
      centerTitle: true,
      title: Image.asset(
            'assets/images/carrot.png',
          ),
    );
  }
}
