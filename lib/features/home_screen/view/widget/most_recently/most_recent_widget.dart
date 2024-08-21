import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';

class MostRecentWidget extends StatelessWidget {
  MostRecentWidget(
      {super.key, required this.recentSurahs, required this.ayahs});

  Surahs recentSurahs;
  Ayahs ayahs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.r),
          width: 270.w,
          height: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: AppColors.primaryColor,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustom(
                      text: recentSurahs.englishName.toString(),
                      color: AppColors.kBlack,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    TextCustom(
                      text: recentSurahs.name.toString(),
                      color: AppColors.kBlack,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    TextCustom(
                      text: ayahs.numberInSurah.toString(),
                      color: AppColors.kBlack,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset(AppImages.homeMos7af))
            ],
          ),
        ),
      ],
    );
  }
}
