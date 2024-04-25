import 'package:flutter/material.dart';
import 'package:soccerapp/routes.dart';
import 'ui/theme/app_theme.dart';

import 'package:get/get.dart';
import 'ui/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
