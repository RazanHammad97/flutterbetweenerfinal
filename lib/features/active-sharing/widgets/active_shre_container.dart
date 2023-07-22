import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveShareContainer extends StatelessWidget {
  ActiveShareContainer({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        width: 276.w,
        height: 48.h,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(6)),
        child: Row(children: [
          Icon(Icons.person,color: Colors.black,),
          Text(title,style: TextStyle(color: Colors.black),),
        ]),
      ),
    );
  }
}
