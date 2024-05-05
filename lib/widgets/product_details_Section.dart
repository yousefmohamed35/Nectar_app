import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/visibilty_widget.dart';

class ProductDetailsSection extends StatefulWidget {
  const ProductDetailsSection({
    super.key,
  });

  @override
  State<ProductDetailsSection> createState() => _ProductDetailsSectionState();
}

bool isVisible = true;

class _ProductDetailsSectionState extends State<ProductDetailsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const HeaderText(
            text: 'Product Details',
          ),
          isVisible
              ? IconButton(
                  onPressed: () {
                    setState(() {});
                    isVisible = !isVisible;
                  },
                  icon: Icon(
                    Icons.expand_more,
                    color: Colors.black,
                    size: 32.sp,
                  ))
              : IconButton(
                  onPressed: () {
                    setState(() {});
                    isVisible = !isVisible;
                  },
                  icon: Icon(
                    Icons.expand_less,
                    color: Colors.black,
                    size: 32.sp,
                  ))
        ]),
        VisibiltyWidget(isVisible: isVisible,),
      ],
    );
  }
}

