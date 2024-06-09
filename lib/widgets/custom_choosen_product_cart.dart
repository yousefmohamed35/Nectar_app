import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_add_and_decrease_item.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';

class CustomChoosenProductCard extends StatelessWidget {
  const CustomChoosenProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/banana.png',
          height: 54.52.h.h,
          width: 68.62.w,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Organic Banana',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
          ),
          const DescriptionText(
            text: '7pcs, priceg',
          ),
          SizedBox(
            height: 20.h,
          ),
          const CustomAddAndDecreaseItem(),
        ]),
        SizedBox(
          width: 20.w,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                },
                icon: Icon(
                  Icons.close,
                  size: 32.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              const HeaderText(
                text: '\$20.00',
              ),
            ])
      ],
    );
  }
}
