import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:nectarapp/views/home_view.dart';
import 'package:nectarapp/views/on_boarding.dart';
import '../constants.dart';
import '../widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key,  this.onBoarding=false});
  final bool onBoarding;
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: kPrimaryColor,
      childWidget: const SplashViewBody(),
      duration: const Duration(seconds: 5),
      animationDuration: Durations.extralong1,
      nextScreen: onBoarding ?  const HomeView(): const OnBoardingView(),
    );
  }
}
