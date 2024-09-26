import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/core/utlis/navigation.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/surah_details_screen/view/widgets/ayahs/custom_app_bar.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';
import 'package:islamic_app/features/surah_details_screen/view/widgets/ayahs/ayah_container.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';

class SurahDetails extends StatelessWidget {
  const SurahDetails({super.key});

  static const surahDetails = 'surahDetails';

  @override
  Widget build(BuildContext context) {

    Surahs surahs = ModalRoute.of(context)?.settings.arguments as Surahs;

    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        return Scaffold(
          backgroundColor: AppColors.kBlack,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.kBlack,
            title: CustomAppBar(nameOfSurah: surahs.name??' '),
            leading: IconButton(
              onPressed: () {
                Navigation.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: AppColors.primaryColor),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              color: AppColors.kBlack,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppImages.leftQous),
                        TextCustom(
                            text: surahs.name.toString(),
                            color: AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                        Image.asset(AppImages.rightQous),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          AyahContainer(ayahs: surahs.ayahs![index]),
                      itemCount:surahs.ayahs!.length,
                    ),
                    // const Spacer(),
                    // Image.asset(AppImages.downBackground),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
