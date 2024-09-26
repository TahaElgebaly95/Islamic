import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/features/intro_screen/view/screens/bearish_item.dart';
import 'package:islamic_app/features/intro_screen/view/screens/mos7af_item.dart';
import 'package:islamic_app/features/intro_screen/view/screens/radio_item.dart';
import 'package:islamic_app/features/intro_screen/view/screens/masjd_item.dart';
import 'package:islamic_app/features/intro_screen/view/screens/language_item.dart';

class OnBoardingViewItem extends StatelessWidget {
  const OnBoardingViewItem({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        LanguageItem(),
        MasjdItem(),
        Mos7afItem(),
        BearishItem(),
        RadioItem(),
      ],
    );
  }
}
