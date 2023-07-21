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
        body: Padding(
      padding: const EdgeInsets.only(left: 48.0, right: 48, top: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImage("assets/images/onboardimg.png", 251.w, 254.h),
          CustomButton(
            "get started".toUpperCase(),
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
