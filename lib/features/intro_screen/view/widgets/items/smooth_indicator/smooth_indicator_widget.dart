import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/features/intro_screen/view/screens/on_boarding_body.dart';

class SmoothIndicatorWidget extends StatelessWidget {
  const SmoothIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      onDotClicked: (index) {
        pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      controller: pageController,
      count: 5,
      effect: const ExpandingDotsEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: AppColors.primaryColor,
        dotColor: AppColors.kGrey,
      ),
    );
  }
}
