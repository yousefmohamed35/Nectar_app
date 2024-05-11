import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/helper/shared_perferance.dart';
import 'package:nectarapp/views/cart_view.dart';
import 'package:nectarapp/views/filter_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await SharedPereferenceHelper().init();
  runApp(
   DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const NectarApp()  , 
    )
  );
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key,});
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
            home:const  CartView(),
          );
        });
  }
}
