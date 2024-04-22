import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/helper/shared_perferance.dart';
import 'package:nectarapp/views/sign_in_view.dart';
import 'package:nectarapp/widgets/custom_button.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/background.jpg',
          ),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
        //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
          Image.asset(
            'assets/images/onboardinglogo.png',height: 100.h,width: 100.w,
            gaplessPlayback: false,
          ),
          Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize:  32.sp,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'to our store',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.sp,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w600,
            ),
          ),
         SizedBox(height: 10.h),
          Text(
            'Get your groceries in as fast as one hour',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.sp,
              fontFamily: 'Gilroy-Medium',
            ),
          ),
           SizedBox(height: 50.h),
          CustomButton(
              onTap: () {
                SharedPereferenceHelper()
                    .saveData(key: 'isOnBoard', value: true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInView(),
                  ),
                );
              },
              text: 'Get Started'),
           SizedBox(height: 100.sp),
        ]),
      ),
    );
  }
}
