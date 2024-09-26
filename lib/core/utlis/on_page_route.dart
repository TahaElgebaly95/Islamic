import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_screen/view/screens/home_screen.dart';
import 'package:islamic_app/features/splash_screen/view/splash_screen.dart';
import 'package:islamic_app/features/surah_details_screen/view/screens/surah_details.dart';
import 'package:islamic_app/features/intro_screen/view/screens/page_view/on_boarding_body.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.splashScreen:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case HomeScreen.homeScreen:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    case OnBoardingPageViewBodyState.onBoardingPageViewBody:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingPageViewBodyState(),
      );
    case SurahDetails.surahDetails:
      return MaterialPageRoute(
        builder: (context) => const SurahDetails(),
      );
    default:
      return null;
  }
}
