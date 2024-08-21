import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class MostRecentText extends StatelessWidget {
  const MostRecentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextCustom(
            text: 'Most Recently Read',
            color: AppColors.primaryColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),
        SizedBox(height: 10.h),
      ],
    );
  }
}
