import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/core/utlis/navigation.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key, required this.nameOfSurah});

  String nameOfSurah;
  @override
  Widget build(BuildContext context) {
    return TextCustom(
        text: nameOfSurah,
        color: AppColors.primaryColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold);
  }
}
