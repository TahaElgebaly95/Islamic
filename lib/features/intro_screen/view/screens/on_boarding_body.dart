import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/back_button.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/next_button.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/smooth_indicator.dart';
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
  //
  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: OnBoardingViewItems(pageController: pageController),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BackButtonWidget(
              currentPage: currentPage != 0,
            ),
            SmoothIndicatorSection(),
            NextButtonWidget(
              text: currentPage == 4 ? 'Finish' : 'Next',
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
