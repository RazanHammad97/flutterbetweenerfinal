import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.title, this.topPadding})
      : super(key: key);
  final String title;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey,fontSize: 24.sp),
      ),
    );
  }
}
