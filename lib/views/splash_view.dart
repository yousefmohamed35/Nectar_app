import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
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
  bool isVisited=false;
  void initState() {
   isVisited =
        SharedPereferenceHelper().getData(key: 'isOnBoard') ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      backgroundColor: kPrimaryColor,
      childWidget: SizedBox(
        height: 300.h,
        width: 300.w,
        child: Image.asset(splashScreenImage),
        ),
      duration: const Duration(seconds: 5),
      animationDuration: Durations.long2,
      nextScreen: isVisited ? const SignInView() : const OnBoardingView(),
      onAnimationEnd: () => debugPrint("On Fade In End"),
    );
  }
}
