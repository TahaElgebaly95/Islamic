import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/features/intro_screen/view/screens/language_item.dart';
import 'package:islamic_app/features/splash_screen/view/custom_splash.dart';

import '../../intro_screen/view/screens/page_view/on_boarding_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const splashScreen = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: double.infinity,
        animationDuration: const Duration(seconds: 3),
        centered: true,
        duration: 3,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: AppColors.kBlack,
        nextRoute: OnBoardingPageViewBodyState.onBoardingPageViewBody,
        splash: const CustomSplashScreen(),
        nextScreen:  const OnBoardingPageViewBodyState());
  }
}
