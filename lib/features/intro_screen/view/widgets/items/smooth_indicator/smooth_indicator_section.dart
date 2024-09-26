import 'package:flutter/cupertino.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/components/back_button.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/items/smooth_indicator/smooth_indicator_widget.dart';
import 'package:islamic_app/features/intro_screen/view/screens/on_boarding_body.dart';
import '../../components/next_button.dart';

class SmoothIndicatorSection extends StatelessWidget {
  const SmoothIndicatorSection(
      {super.key,
      required this.currentPageVisibilityForBackButton,
      required this.currentPageVisibilityForNextButton});

  final bool currentPageVisibilityForBackButton;
  final String currentPageVisibilityForNextButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BackButtonWidget(currentPageVisibility: currentPageVisibilityForBackButton),
        const SmoothIndicatorWidget(),
        NextButtonWidget(text: currentPageVisibilityForNextButton,),
      ],
    );
  }
}
