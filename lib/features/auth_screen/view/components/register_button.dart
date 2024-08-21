import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';
import 'package:islamic_app/features/auth_screen/view/screens/register_screen/register_screen.dart';

import 'package:islamic_app/core/utlis/colors.dart';

import 'package:islamic_app/core/utlis/navigation.dart';
import 'package:islamic_app/features/auth_screen/view_model/auth_cubit/cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextCustom(
          text: 'Don\'t have an account?',
          fontSize: 18.sp,
          color: AppColors.kGrey,
        ),
        TextButton(
          onPressed: () {
            Navigation.push(context, const RegisterScreen());
            AuthCubit.get(context).emilaController.clear();
            AuthCubit.get(context).passwordController.clear();
          },
          child: Text(
            'Register',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 18.sp),
          ),
        ),
      ],
    );
  }
}
