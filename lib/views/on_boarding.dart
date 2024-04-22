import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/onboarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnboardingBody(),
      ),
    );
  }
}

