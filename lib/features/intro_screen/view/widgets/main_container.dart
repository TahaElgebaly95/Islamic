import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/utlis/colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.child});
 final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.kBlack),
      child: child,
    );
  }
}
