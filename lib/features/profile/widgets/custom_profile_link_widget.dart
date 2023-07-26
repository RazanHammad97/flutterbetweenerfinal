import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../auth/widgets/custom_text_widget.dart';

class ProfileLink extends StatelessWidget {
  ProfileLink({
    required this.color,
    required this.socialTitle,
    required this.socialLinkTitle,
    Key? key,
  }) : super(key: key);
  final Color color;
  final String socialTitle;
  final String socialLinkTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        width: 296.w,
        height: 58.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            CustomText(
              title: socialTitle,
              topPadding: 2,
              color: Colors.black,
              fontSize: 18.sp,
            ),
            CustomText(
              title: socialLinkTitle,
              topPadding: 2,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
