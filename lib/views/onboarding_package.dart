import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/views/home_view.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPackage extends StatelessWidget {
  const OnBoardingPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showDoneButton: false,

      //  globalBackgroundColor: kPrimaryColor,
        
        onDone: () {},
        showNextButton: false,
        pages: [
          PageViewModel(
            decoration: PageDecoration(
              //fullScreen: true,
              imageAlignment: Alignment.bottomCenter,
              imageFlex: 3,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 1.sp * 32,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w600,
                ),
              bodyTextStyle: TextStyle(
                color: Colors.grey,
                  fontSize: 1.sp * 16,
                  fontFamily: 'Gilroy-Medium',
              ),
              bodyAlignment: Alignment.center,
              boxDecoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/background.jpg'), fit: BoxFit.fill),
              )
            ),
            title: 'Welcome to our store',
            body: 'Get your groceries in as fast as one hour',
            image: Image.asset(
              'assets/images/Vector.png',
            ),
            footer: CustomButton(text: 'Get Started',  
            onTap: ()async{
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('onBoarding', true);
                    if (Navigator.canPop(context))return;  
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },)
          ),
        ]);
  }
}
