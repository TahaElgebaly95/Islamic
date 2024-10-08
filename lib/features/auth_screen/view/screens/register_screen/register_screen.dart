import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/auth_screen/view_model/section_register/login_button.dart';
import 'package:islamic_app/features/auth_screen/view_model/section_register/section_form_field.dart';
import 'package:islamic_app/features/auth_screen/view/components/logo_login.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const registerScreen = 'registerScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              SizedBox(height: 40.h),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Logo()],
              ),
              SizedBox(height: 40.h),
              const IfHaveAcc(),
              Container(
                padding: EdgeInsets.all(15.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.primaryColor, width: 2.w),
                ),
                child: const SectionFormField(),
              ),
              SizedBox(height: 140.h),
            ],
          ),
        ),
      ),
    );
  }
}
