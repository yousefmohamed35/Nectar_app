import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_app_bar.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:1.sp*32, left: 1.sp*16, right: 1.sp*16),
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back.png',),
          fit: BoxFit.fill,
        )
      ),
      child: Column(
        children: [
        const  CustomAppBar(),
     SizedBox(height:1.sp* 20),
          Image.asset('assets/images/carrot.png'),
        ]
      ),
      );
  }
}