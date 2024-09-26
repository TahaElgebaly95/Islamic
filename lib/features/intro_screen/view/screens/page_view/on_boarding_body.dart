import 'package:flutter/material.dart';
import 'package:islamic_app/features/intro_screen/view/screens/page_view/on_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class OnBoardingPageViewBodyState extends StatefulWidget {
  const OnBoardingPageViewBodyState({super.key});

  static const onBoardingPageViewBody = 'onBoardingPageViewBody';

  @override
  State<OnBoardingPageViewBodyState> createState() =>
      _OnBoardingPageViewBodyStateState();
}

late PageController pageController;
int currentPage = 0;

class _OnBoardingPageViewBodyStateState
    extends State<OnBoardingPageViewBodyState> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingViewItem(pageController: pageController),
        ),
        SmoothPageIndicator(
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
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
