import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/header_text.dart';

class BeverageView extends StatelessWidget {
  const BeverageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        centerTitle: true,
        title: HeaderText(text: 'Beverages'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list,
            ),
          )
        ],
      ),
    );
  }
}
