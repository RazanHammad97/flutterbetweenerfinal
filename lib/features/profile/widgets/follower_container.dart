import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowerContainer extends StatelessWidget {
  const FollowerContainer({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        width: 80.w,
        height: 17.h,
        decoration: BoxDecoration(
          color: Color(0xFFD4650F),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(fontSize: 12.sp),
          ),
        ),
      ),
    );
  }
}