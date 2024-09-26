import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: AppColors.kBlue,
            child: Image.asset(
              'assets/images/Splash Screen.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
