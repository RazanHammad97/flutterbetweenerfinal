import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/widgets/custom_button.dart';
import 'package:projectbetweener/auth/widgets/custom_image_widget.dart';
import 'package:projectbetweener/auth/widgets/screen_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({Key? key}) : super(key: key);
  static String id = "/onboarding";

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        leftPadding: 48,
        rightPadding: 48,
        body: [
      CustomImage("assets/images/onboardimg.png", 251.w, 254.h),
      CustomButton(
        "get started".toUpperCase(),
        onPressed: () {},
      )
    ]);
  }
}
