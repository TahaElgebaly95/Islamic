import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';


class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.description});
 final String description ;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      child: TextCustom(
        softWrap: true,
        textAlign: TextAlign.center,
        text: description.tr(),
        color: AppColors.primaryColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
