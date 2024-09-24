import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';

class AyahContainer extends StatelessWidget {
  const AyahContainer({super.key, required this.ayahs});

  final Ayahs ayahs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 395.w,
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(11.r)),
      child: TextCustom(
        textAlign: TextAlign.center,
        text:
            '  [${ayahs.numberInSurah.toString()}]  ${ayahs.text.toString()} ',
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        softWrap: true,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
