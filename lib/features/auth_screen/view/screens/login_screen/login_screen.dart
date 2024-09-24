import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/item/local_keys.g.dart';
import 'package:islamic_app/core/components/widgets/elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const loginScreen = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    // context.setLocale(const Locale('en'));
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0.sp),
          child: ListView(
            children: [
              Image.asset(
                'assets/images/Splash Screen.png',
                width: 100.w,
                height: 100.h,
              ),
              SizedBox(height: 40.h),
              Text(LocaleKeys.welcome.tr()),
              TextCustom(text: LocaleKeys.splashScreen.tr()),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: CustomElevatedButton(
                        backgroundColor: Colors.red,
                        nameOfButton: LocaleKeys.english.tr(),
                        onPressed: () {
                          context.setLocale(const Locale('en'));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                      child: CustomElevatedButton(
                        backgroundColor: Colors.blue,
                        nameOfButton: LocaleKeys.arabic.tr(),
                        onPressed: () {
                          context.setLocale(const Locale('ar'));
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
