import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectbetweener/features/active-sharing/widgets/active_shre_container.dart';
import '../auth/widgets/custom_image_widget.dart';
import '../auth/widgets/custom_text_widget.dart';
import '../auth/widgets/screen_container.dart';

class ActiveSharingView extends StatelessWidget {
  const ActiveSharingView({Key? key}) : super(key: key);
  static String id = '/activeShare';

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(body: [
      CustomText(
        title: "Active Sharing",
        color: Colors.black,
        fontSize: 24.sp,
      ),
      CustomImage(
        "assets/images/activeShare.png",
        120.w,
        193.82.h,
      ),
      ActiveShareContainer(title: "Razan",),
      ActiveShareContainer(title: "Razan",),
      ActiveShareContainer(title: "Razan",),
      ActiveShareContainer(title: "Razan",)
    ]);
  }
}
