import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/home_screen/view/screens/home_screen.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/description_text.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/logo.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/main_container.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/title_text.dart';
import 'package:islamic_app/item/local_keys.g.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:islamic_app/core/utlis/navigation.dart';
import 'package:islamic_app/features/auth_screen/view/screens/login_screen/login_screen.dart';

class IntroRadio extends StatefulWidget {
  const IntroRadio({super.key});

  static const introRadio = 'introRadio';

  @override
  State<IntroRadio> createState() => _IntroRadioState();
}

class _IntroRadioState extends State<IntroRadio> {
  int currentPage = 0;
  late PageController pageController;

  void init() {
    PageController pageController = PageController(initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: MainContainer(
        child: Column(
          children: [
            LogoPhoto(
              logoPhoto: AppImages.radio,
              space: height * 0.01,
              widthSize: width * 0.8,
              heightSize: height * 0.5,
            ),
            SizedBox(height: height * 0.00),
            TitleText(titleText: LocaleKeys.holyQuranRadio.tr()),
            SizedBox(height: height * 0.02),
            DescriptionText(
                description: LocaleKeys
                    .youCanListenToTheHolyQuranRadioThroughTheApplicationForFreeAndEasily
                    .tr()),
            SizedBox(height: height * 0.045),
            SmoothPageIndicator(
                controller: PageController(initialPage: currentPage),
                // PageController
                count: 3,
                textDirection: TextDirection.ltr,
                effect:
                    const WormEffect(activeDotColor: AppColors.primaryColor),
                // your preferred effect
                onDotClicked: (index) {
                 Navigator.pushNamed(context, HomeScreen.homeScreen);
                })
          ],
        ),
      )),
    );
  }
}
