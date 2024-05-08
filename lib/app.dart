import 'package:flutter/material.dart';
import 'package:soccerapp/routes.dart';
import 'ui/theme/app_theme.dart';

import 'package:get/get.dart';
import 'ui/screens/home/home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // If the system can show an authorization request dialog
    if (await AppTrackingTransparency.trackingAuthorizationStatus ==
        TrackingStatus.notDetermined) {
      await Future.delayed(const Duration(milliseconds: 200));
      await AppTrackingTransparency.requestTrackingAuthorization();
    }
    await Future.delayed(const Duration(seconds: 1));
    await Future.delayed(const Duration(seconds: 1));
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          home: const HomeScreen(),
          initialRoute: Routes.root,
          getPages: routes,
        );
      },
    );
  }
}
