import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:projectbetweener/core/util/general_services.dart';

import 'custom_image_widget.dart';

class CustomSocialButton extends StatelessWidget {
  CustomSocialButton(
      {this.onPressed, required this.title, this.color, Key? key})
      : super(key: key);
  void Function()? onPressed;
  String title;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: SizedBox(
          width: 274.w,
          height: 50.h,
          child: ElevatedButton(
            style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.w,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              CustomImage(
                "assets/images/google.png",
                24,
                24,
                color: Colors.red,
              ),
              Text(title, style: TextStyle(color: color),),
            ],
          )),
    ),);
  }
}
