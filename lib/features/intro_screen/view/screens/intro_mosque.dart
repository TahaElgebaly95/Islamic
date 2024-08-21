import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/description_text.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/logo.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/main_container.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/title_text.dart';
import 'package:islamic_app/item/local_keys.g.dart';

class IntroWelcome extends StatelessWidget {
  const IntroWelcome({super.key});

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
              logoPhoto: AppImages.kabba,
              space: height * 0.04,
              widthSize: width * 0.8,
              heightSize: height * 0.45,
            ),
            SizedBox(height: height * 0.04),
            TitleText(titleText: LocaleKeys.welcomeToIslami.tr()),
            SizedBox(height: height * 0.03),
            SizedBox(
                width: width * 0.9,
                child: DescriptionText(
                    description: LocaleKeys
                        .weAreVeryExitedToHaveYouInOurCommunity
                        .tr())),
            SizedBox(height: height * 0.05),
            // AnimatedSmoothIndicator(
            //   // PageController
            //   count: 3,
            //   textDirection: TextDirection.ltr,
            //   effect: const WormEffect(),
            //   // your preferred effect
            //   onDotClicked: (index) {
            //     Navigation.push(context, const IntroQuran());
            //   },
            //   activeIndex: currentPage,
            // )
          ],
        ),
      )),
    );
  }
}
