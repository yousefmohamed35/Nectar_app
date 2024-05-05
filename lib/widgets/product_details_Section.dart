import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/header_text.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        const  HeaderText(text: 'Product Details',),
         
          ]
        ),
      ],
    );
  }
}
