import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectarapp/views/home_view.dart';

class ResetPasswordAccept extends StatelessWidget {
  const ResetPasswordAccept({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      childWidget: SizedBox(
         height: 200,
         width: 200,
         child:,
      ),
      backgroundColor: Colors.white,
      duration: const Duration(seconds: 5),
      animationDuration: Durations.long2,
      nextScreen: const HomeView(),
    );
  }
}
