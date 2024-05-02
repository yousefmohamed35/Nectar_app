import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/header_text.dart';

class TheTitleOfCategorySection extends StatelessWidget {
  const TheTitleOfCategorySection({
    super.key, required this.hText,
  });
 final  String hText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           HeaderText(text: hText),
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
      ),
    );
  }
}
