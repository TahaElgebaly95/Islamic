import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/smooth_indicator/smooth_indicator_section.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/page_view/on_boarding_item.dart';

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
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: OnBoardingViewItems(pageController: pageController),
        ),
        SmoothIndicatorSection(
          currentPageVisibilityForBackButton: currentPage != 0 ? true : false,
          currentPageVisibilityForNextButton:
              currentPage == 4 ? 'Finish' : 'Next',
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
