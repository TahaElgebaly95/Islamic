import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:islamic_app/core/utlis/images.dart';

class LogoPhoto extends StatelessWidget {
  LogoPhoto(
      {super.key,
      required this.logoPhoto,
      this.space,
      this.widthSize,
      this.heightSize});

  final String logoPhoto;
  double? space;
  double? widthSize;
  double? heightSize;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(AppImages.mosque),
            Positioned(
                bottom: 0.h,
                left: width * 0.14,
                child: Image.asset(AppImages.islami)),
          ],
        ),
        SizedBox(height: 20.h),
        SizedBox(
          width: width * .9,
          height: height * .40,
          child: Image.asset(
            logoPhoto,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: height * 0.1),
      ],
    );
  }
}
