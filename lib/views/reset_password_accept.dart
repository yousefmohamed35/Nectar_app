import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectarapp/views/home_view.dart';
import 'package:nectarapp/widgets/reset_password_accept_body.dart';

class ResetPasswordAccept extends StatelessWidget {
  const ResetPasswordAccept({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      childWidget:const ResetPasswordAcceptBody(),
      backgroundColor: Colors.white,
      duration: const Duration(seconds: 2),
      animationDuration: Durations.long2,
      nextScreen: const HomeView(),
    );
  }
}
