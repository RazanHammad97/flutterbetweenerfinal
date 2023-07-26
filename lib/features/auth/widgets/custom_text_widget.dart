import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {Key? key,
      required this.title,
      this.topPadding = 24,
      this.alignValue = Alignment.center,
      this.color = Colors.grey,
      this.fontSize=12,this.leftPadding=4})
      : super(key: key);
  final String title;
  final double? topPadding;
  final double? leftPadding;
  final AlignmentGeometry alignValue;
  Color? color;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!, left: leftPadding!),
      child: Align(
        alignment: alignValue,
        child: Text(
          title,
          style: TextStyle(color: color, fontSize: fontSize),
        ),
      ),
    );
  }
}
