import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class SurahText extends StatelessWidget {
  const SurahText({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * .02),
        TextCustom(
            text: 'Surah List',
            color: AppColors.primaryColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),
      ],
    );
  }
}
