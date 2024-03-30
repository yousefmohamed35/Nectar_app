import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/splash_body.dart';
import 'package:nectarapp/widgets/splash_packeges.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashDetails(),
    );
  }
}
