import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class TitleOfItemDetailsView extends StatelessWidget {
  const TitleOfItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HeaderText(
          text: 'Organic Banana',
        ),
        Icon(
          Icons.favorite_border,
          size: 26.sp,
          color: Colors.grey,
        ),
      ],
    );
  }
}
