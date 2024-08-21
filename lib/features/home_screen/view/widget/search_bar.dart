import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utlis/images.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        return Column(
          children: [
            SearchBar(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              controller: cubit.searchController,
             onChanged: (c) {
               cubit.searchByName(c);
             },
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 10.w)),
              leading: Image.asset(AppImages.helal),
              keyboardType: TextInputType.text,
              onTapOutside:   (c) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              textInputAction:  TextInputAction.search,
              textStyle:  WidgetStatePropertyAll(TextStyle(
                  color: AppColors.kWhite,fontWeight: FontWeight.bold,fontSize: 15.sp
              )),
              hintText: 'Sura Name',
              hintStyle: WidgetStatePropertyAll(TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold)),
              side: const WidgetStatePropertyAll(
                  BorderSide(color: AppColors.primaryColor)),
              elevation: const WidgetStatePropertyAll(1),
              backgroundColor:
                  const WidgetStatePropertyAll(AppColors.kTransparent),
            ),
            SizedBox(height: 10.h),
          ],
        );
      },
    );
  }
}
