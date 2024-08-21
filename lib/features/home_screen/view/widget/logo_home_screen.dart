import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/utlis/images.dart';

class LogoPhotoHomeScreen extends StatelessWidget {
  const LogoPhotoHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          AppImages.background,
          fit: BoxFit.fill,
          width: double.infinity,
          height: height,
        ),
        Positioned(
            left: width * .15,
            top: height * .04,
            child: Image.asset(AppImages.mosque)),
        Positioned(
            left: width * .3,
            top: height * .17,
            child: Image.asset(AppImages.islami)),
      ],
    );
  }
}
