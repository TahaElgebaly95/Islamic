import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/intro_screen/view/screens/on_boarding_body.dart';
import 'package:islamic_app/core/components/widgets/text_button_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/features/home_screen/view/screens/home_screen.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButtonCustom(
      text: text,
      onPressed: () {
        currentPage == 4
            ? Navigator.pushNamed(context, HomeScreen.homeScreen)
            : pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      textColor: AppColors.primaryColor,
      fontSize: 16.sp,
    );
  }
}
