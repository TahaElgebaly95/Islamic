import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/intro_screen/view/screens/page_view/page_view_item.dart';
import 'package:islamic_app/item/local_keys.g.dart';

class MasjdItem extends StatelessWidget {
  const MasjdItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
        logoPhoto: AppImages.kabba,
        titleText: LocaleKeys.welcomeToIslami.tr(),
        description: LocaleKeys.weAreVeryExitedToHaveYouInOurCommunity.tr());
  }
}
