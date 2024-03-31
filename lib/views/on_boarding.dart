import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectarapp/constants.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
            child: Column(mainAxisAlignment: MainAxisAlignment.center, 
            children: [
               const  Spacer(flex: 3,),
              Image.asset('assets/images/Vector.png'),
              const Text(
                'Welcome To our store',
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Ger your groceries in as fast as one hour',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(vertical:  20),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
            
                ),
                child:const Text('Get Started',),
              ),
              const Spacer(flex: 1,),
            ]),
          ),
        ),
      ),
    );
  }
}
