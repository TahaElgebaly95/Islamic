import 'package:flutter/material.dart';
import 'package:islamic_app/core/utlis/navigation.dart';
import 'package:islamic_app/features/intro_screen/view/screens/intro_language.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const splashScreen = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, IntroLanguage.introLanguage );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Image.asset(
                'assets/images/Splash Screen.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
