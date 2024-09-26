import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';


class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.titleText});
  final String titleText ;
  @override
  Widget build(BuildContext context) {
    return TextCustom(
        decoration: TextDecoration.none,
        text: titleText.tr(),
        color: AppColors.primaryColor,
        fontSize: 23.sp,
        fontWeight: FontWeight.bold);
  }
}
