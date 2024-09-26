import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/intro_screen/view/screens/on_boarding_body.dart';
import 'package:islamic_app/core/components/widgets/text_button_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required this.currentPageVisibility});

  final bool currentPageVisibility;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPageVisibility,
      child: TextButtonCustom(
        text: 'Back',
        onPressed: () {
          pageController.previousPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        textColor: AppColors.primaryColor,
        fontSize: 16.sp,
      ),
    );
  }
}
