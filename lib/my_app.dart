import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/splash_screen/view/splash_screen.dart';
import 'package:islamic_app/core/utlis/on_page_route.dart';
import 'package:islamic_app/features/home_screen/view/screens/home_screen.dart';
import 'package:islamic_app/features/surah_details_screen/view/screens/surah_details.dart';

class MyAppIslamic extends StatelessWidget {
  const MyAppIslamic({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        //context.setLocale(const Locale('en'));
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute: SplashScreen.splashScreen,
          routes: {
            SplashScreen.splashScreen: (context) => const SplashScreen(),
            HomeScreen.homeScreen: (context) =>  HomeScreen(),
            SurahDetails.surahDetails: (context) => const SurahDetails(),
          },
        );
      },
    );
  }
}
