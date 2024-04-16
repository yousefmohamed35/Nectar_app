import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/views/sign_in_view.dart';
import 'package:nectarapp/widgets/custom_button.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/background.jpg',
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              const Spacer(
                flex: 3,
              ),
              Image.asset(
                'assets/images/Vector.png',
              ),
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 1.sp * 32,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'to our store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 1.sp * 32,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Get your groceries in as fast as one hour',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 1.sp * 16,
                  fontFamily: 'Gilroy-Medium',
                ),
              ),
              const SizedBox(height: 50),
              CustomButton(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    );
                  },
                  text: 'Get Started'),
              const Spacer(
                flex: 1,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
