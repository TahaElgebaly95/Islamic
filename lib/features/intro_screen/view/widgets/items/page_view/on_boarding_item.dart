import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/item_view/bearish_item.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/item_view/radio_item.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/item_view/language_item.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/item_view/masjd_item.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/item_view/mos7af_item.dart';

class OnBoardingViewItems extends StatelessWidget {
  const OnBoardingViewItems({super.key, required this.pageController});

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
