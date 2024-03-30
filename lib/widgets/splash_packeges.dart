import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:nectarapp/views/home_view.dart';
import 'package:nectarapp/widgets/splash_body.dart';

import '../constants.dart';
class SplashDetails extends StatelessWidget {
  const SplashDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: kPrimaryColor,
      childWidget: const SplashViewBody(),
      duration: const Duration(seconds: 2),
      animationDuration: Durations.extralong1,
      nextScreen: const HomeView(),
    );
  }
}
