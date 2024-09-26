import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/page_view/page_view_item.dart';
import 'package:islamic_app/item/local_keys.g.dart';

class RadioItem extends StatelessWidget {
  const RadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
        logoPhoto: AppImages.radio,
        titleText: LocaleKeys.holyQuranRadio.tr(),
        description: LocaleKeys
            .youCanListenToTheHolyQuranRadioThroughTheApplicationForFreeAndEasily
            .tr());
  }
}
