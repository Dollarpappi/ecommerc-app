import 'package:eccomm/features/authentication/screens/onboarding/onboarding.dart';
import 'package:eccomm/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightThem,
      darkTheme: TAppTheme.darkThem,
      home:const OnBoardingScreen(),
      );
    
  }
}