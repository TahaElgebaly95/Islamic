import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/intro_screen/view/screens/page_view/page_view_item.dart';
import 'package:islamic_app/item/local_keys.g.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
      logoPhoto: AppImages.eidMubark,
      chooseLanguageWord: LocaleKeys.chooseLanguage,
      arabicWord: LocaleKeys.arabic,
      englishWord: LocaleKeys.english,
    );
  }
}
