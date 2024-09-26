
import 'package:flutter/cupertino.dart';

import '../widgets/back_button.dart';
import '../widgets/next_button.dart';
import '../widgets/smooth_indicator.dart';
import 'on_boarding_body.dart';

class SmoothIndicatorSection extends StatelessWidget {
  const SmoothIndicatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BackButtonWidget(currentPage: currentPage != 0),
        const SmoothIndicatorWidget(),
        NextButtonWidget(text: currentPage == 4 ? 'Finish' : 'Next'),
      ],
    );
  }
}
