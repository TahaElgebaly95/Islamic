import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/core/utlis/colors.dart';
import 'package:islamic_app/core/utlis/navigation.dart';
import 'package:islamic_app/features/auth_screen/view/screens/login_screen/login_screen.dart';

class IfHaveAcc extends StatelessWidget {
  const IfHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextCustom(
          text: 'Already have an account?',
          fontSize: 18.sp,
          color: AppColors.kGrey,
        ),
        // TextButton(
        //   onPressed: () {
        //     Navigation.push(context,  LoginScreen());
        //   },
        //   child: Text(
        //     'Login',
        //     style: TextStyle(color: AppColors.primaryColor, fontSize: 18.sp),
        //   ),
        // ),
      ],
    );
  }
}
