import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  final onBoarding = pref.getBool('onBoarding') ?? false;
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>  NectarApp(
        onBoarding: onBoarding,
      ), // Wrap your app
    ),
  );
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key, required this.onBoarding});
  final bool onBoarding;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home:  SplashView(
              onBoarding: onBoarding,
            ),
          );
        });
  }
}
