import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:islamic_app/core/utlis/images.dart';

class LogoPhoto extends StatelessWidget {
  const LogoPhoto(
      {super.key,
      required this.logoPhoto,
      required this.space,
      required this.widthSize,
      required this.heightSize});

  final String logoPhoto;
  final double space;
  final double widthSize;
  final double heightSize;

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
        SizedBox(height: space.h),
        Image.asset(
          logoPhoto,
          width: widthSize,
          height: heightSize,
        ),
      ],
    );
  }
}
