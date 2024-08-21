import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_radio.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/description_text.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/logo.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/main_container.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/title_text.dart';
import 'package:islamic_app/item/local_keys.g.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:islamic_app/core/utlis/navigation.dart';

class IntroBearish extends StatelessWidget {
  const IntroBearish({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: MainContainer(child:  Column(
            children: [
              LogoPhoto(logoPhoto: AppImages.bearish, space: height * 0.00,widthSize: width * 0.8,heightSize: height * 0.54,),
              TitleText(titleText: LocaleKeys.bearish.tr()),
              SizedBox(height: height * 0.02),
               DescriptionText(description: LocaleKeys.praiseTheNameOfMyLordTheMostHigh.tr()),
              SizedBox(height: height * 0.05),
              SmoothPageIndicator(
                  controller: PageController(initialPage: currentPage),
                  // PageController
                  count: 3,
                  textDirection: TextDirection.ltr,
                  effect: const WormEffect(),
                  // your preferred effect
                  onDotClicked: (index) {
                    Navigation.push(context, const IntroRadio());
                  })
            ],
          ),)
      ),
    );
  }
}
