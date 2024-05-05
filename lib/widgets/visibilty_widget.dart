import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class VisibiltyWidget extends StatelessWidget {
  const VisibiltyWidget({
    super.key, required this.isVisible,
  });
final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: !isVisible,
        child: Text(
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
        style: TextStyle(color: kSecondaryColor,fontSize: 14.sp),
        ),);
  }
}
