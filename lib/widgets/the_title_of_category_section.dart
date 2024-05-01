import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/header_text.dart';

class TheTitleOfCategorySection extends StatelessWidget {
  const TheTitleOfCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HeaderText(text: 'Exclusive Offer'),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
