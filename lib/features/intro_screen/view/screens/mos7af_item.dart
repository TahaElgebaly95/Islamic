import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/intro_screen/view/screens/page_view/page_view_item.dart';
import 'package:islamic_app/item/local_keys.g.dart';

class Mos7afItem extends StatelessWidget {
  const Mos7afItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
        logoPhoto: AppImages.mos7af,
        titleText: LocaleKeys.readingTheQuran.tr(),
        description: LocaleKeys.readAndYourLordIsTheMostGenerous.tr());
  }
}
