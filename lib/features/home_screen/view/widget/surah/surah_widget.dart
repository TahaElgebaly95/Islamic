import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class SurahWidget extends StatelessWidget {
  const SurahWidget({super.key, required this.surahs,this.onTap});

  final Surahs surahs;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 50.w,
              height: 50.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/star.png'),
                ),
              ),
              child: Center(
                child: Text(
                  surahs.number.toString(),
                  style:  TextStyle(color: AppColors.kWhite,fontSize: 20.sp),
                ),
              ),
            ),
            trailing: Text(
              surahs.englishName.toString(),
              style: TextStyle(color: AppColors.kWhite,fontSize: 17.sp),
            ),
            title: Text(
              surahs.name.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.kWhite,fontSize: 17.sp),
            ),
            subtitle: TextCustom(text: surahs.number  .toString()??'',color: AppColors.primaryColor,),
          ),
          Divider(color: AppColors.kWhite,thickness: 1,endIndent: 30.w,indent: 30.w ,)
        ],
      ),
    );
  }
}
