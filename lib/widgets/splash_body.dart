import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            logo,
          ),
          const Text(
            'o n l i n e  g r o c e r i e t',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Gilroy-Medium',
            ),
          )
        ],
      ),
    );
  }
}
