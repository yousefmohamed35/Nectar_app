import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/description_text.dart';

class ResetPasswordAcceptBody extends StatelessWidget {
  const ResetPasswordAcceptBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children:  [
          Spacer(flex: 1,),
          Image.asset(
            'assets/images/accept.png',
            height: 1.sp * 200,
            width: 1.sp * 200,
          ),
          SizedBox(height: 1.sp*30),
          Text('Congratulations',style: TextStyle(fontSize: 1.sp * 32,fontWeight: FontWeight.w800),),
          SizedBox(height: 1.sp*30),
        const  DescriptionText(text: 'Your change Password Is Success',),
        SizedBox(height: 1.sp*10),
        const DescriptionText(text: 'Welcome to our app',),
        Spacer(flex: 2,),
        const CircularProgressIndicator(),
        
        ]
      ),
    );
  }
}