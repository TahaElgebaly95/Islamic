import 'package:easy_localization/easy_localization.dart'as easy;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/title_text.dart';
import 'package:islamic_app/item/local_keys.g.dart';

class ChooseLanguage extends StatelessWidget {
   ChooseLanguage({super.key, this.chooseLanguageWord,this.englishWord,this.arabicWord});

  static const chooseLanguage = 'chooseLanguage';
  String? chooseLanguageWord ;
  String? englishWord;
  String? arabicWord ;

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection:  TextDirection.ltr,
      child: Column(
        children: [
          TitleText(titleText:chooseLanguageWord?.tr()??''),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    context.setLocale(const Locale('en'));
                  },
                  child: TextCustom(
                    text: englishWord?.tr()??'',
                    color: AppColors.primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  )),
              TextCustom(
                  decoration: TextDecoration.none,
                  text: chooseLanguageWord == null ? '' : '|',
                  color: AppColors.primaryColor,
                  fontSize: 20.sp),
              TextButton(
                onPressed: () {
                  context.setLocale(const Locale('ar'));
                },
                child: TextCustom(
                  text: arabicWord?.tr()??'',
                // text: LocaleKeys.arabic.tr(),
                  color: AppColors.primaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
