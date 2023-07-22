import 'package:flutter/material.dart';

import 'package:projectbetweener/features/home/widgets/home_icons.dart';
import 'package:projectbetweener/features/home/widgets/social_container.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/widgets/custom_image_widget.dart';
import '../auth/widgets/custom_text_widget.dart';
import '../auth/widgets/screen_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static String id = '/homeView';

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        body:  [
        HomeIcons(),
        CustomText(
          title: "Hi, Razan!",
          topPadding: 46,
          alignValue: Alignment.topLeft,
          fontSize: 32.sp,
          color: Colors.black,
          leftPadding: 22,
        ),
        CustomImage("assets/images/scanner.png", 317.72.w, 341.5.h),
        CustomImage("assets/images/line.png", 198.w, 2.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
            SocialContainer( title: 'Facebook',userName: '@razanhammad',color: 0xFFD4650F,),
            SocialContainer( title: 'Facebook',userName: '@razanhammad',color: 0xFFD4650F,),
            SocialContainer( title: '+',userName: 'Add Link',color: 0xE7E5F10F,)
          ],),
        )
      ],
    );
  }
}
