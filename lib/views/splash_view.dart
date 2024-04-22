import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/helper/shared_perferance.dart';
import 'package:nectarapp/views/on_boarding.dart';
import 'package:nectarapp/views/sign_in_view.dart';
import '../constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
  bool  isVisited = SharedPereferenceHelper().getData(key: 'isOnBoard') ?? false;  
     Future.delayed(const Duration(seconds: 5), () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
  isVisited ?
  const SignInView() :const OnBoardingView(),),);
  });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SizedBox(
          height: 300.h,
          width: 300.w,
          child: Image.asset(splashScreenImage),
        ),
      ),
    );
  }
}
