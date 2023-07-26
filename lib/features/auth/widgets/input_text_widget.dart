import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class InputText extends StatelessWidget {
  InputText(this.controller, this.hint, this.inputTitle, {Key? key})
      : super(key: key);
  TextEditingController controller;
  String hint;
  String inputTitle;

  @override
  Widget build(BuildContext context) {
    controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(left: 48,right: 48,top: 24),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(inputTitle,style: const TextStyle(color: Colors.black),),
          ),
          SizedBox(
            width: 274.w,
            height: 50.h,
            child: TextField(
              controller: controller,
              decoration:  InputDecoration(
                contentPadding: const EdgeInsets.only(left: 12, right: 12),
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: hint,
                border: OutlineInputBorder(
                  // borderSide: const  BorderSide(width: 2, color: Color(0x2D2B4E)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
