import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_screen/view/screens/home_screen.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_bearish.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_language.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_welcome.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_radio.dart';
import 'package:islamic_app/features/splash_screen/view/splash_screen.dart';
import 'package:islamic_app/features/surah_details_screen/view/screens/surah_details.dart';

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
    case IntroLanguage.introLanguage:
      return MaterialPageRoute(
        builder: (context) => const IntroLanguage(),
      );
      case IntroWelcome.introWelcome:
      return MaterialPageRoute(
        builder: (context) => const IntroWelcome(),
      );
      case IntroBearish.introBearish:
      return MaterialPageRoute(
        builder: (context) => const IntroBearish(),
      );
      case IntroRadio.introRadio:
      return MaterialPageRoute(
        builder: (context) => const IntroRadio(),
      );
      case SurahDetails.surahDetails:
      return MaterialPageRoute(
        builder: (context) => const SurahDetails(),
      );

    default:
      return null;
  }
}
