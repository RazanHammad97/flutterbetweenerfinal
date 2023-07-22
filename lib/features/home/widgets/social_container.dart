import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../auth/widgets/custom_text_widget.dart';


class SocialContainer extends StatelessWidget {
  SocialContainer({required this.title, required this.userName,this.color, Key? key})
      : super(key: key);
  final String title;
  final String userName;
  int? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Container(
        width: 116.w,
        height: 79.h,
        decoration: BoxDecoration(
            color: Color(color!), borderRadius: BorderRadius.circular(22)),
        child: Column(
          children: [
            CustomText(
              title: title,
              alignValue: Alignment.center,
              color: Colors.black,
              fontSize: 16.sp,
            ),
            CustomText(
              title: userName,
              alignValue: Alignment.center,
              fontSize: 12.sp,
              topPadding: 4,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
