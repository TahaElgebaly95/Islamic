import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_button_custom.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/core/utlis/navigation.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_mosque.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/choose_language.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/logo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/main_container.dart';
import 'package:islamic_app/core/utlis/colors.dart';

import 'intro_quran.dart';

class IntroLanguage extends StatelessWidget {
  const IntroLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: MainContainer(
          child: Column(
            children: [
              LogoPhoto(
                logoPhoto: AppImages.eidMubark,
                space: height * 0.05,
                widthSize: width * 0.8,
                heightSize: height * 0.4,
              ),
              SizedBox(height: height * 0.07),
              const ChooseLanguage(),
              SizedBox(height: height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButtonCustom(
                    text: 'Back',
                    textColor: AppColors.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    backgroundColor: AppColors.kBlack,
                    onPressed: () {
                      Navigation.pop(context);
                    },
                  ),
                  SmoothPageIndicator(
                      controller: PageController(initialPage: currentPage),
                      // PageController
                      count: 6,
                      textDirection: TextDirection.ltr,
                      effect: const ExpandingDotsEffect(
                          activeDotColor: AppColors.primaryColor),
                      // your preferred effect
                      onDotClicked: (index) {
                        Navigation.push(context, const IntroWelcome());
                      }),
                  TextButtonCustom(
                    text: 'Next',
                    backgroundColor: AppColors.kBlack,
                    textColor: AppColors.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    onPressed: () {
                      Navigation.push(context, const IntroQuran());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
