import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  ScreenContainer(
      {required this.body,
      this.leftPadding = 0,
      this.rightPadding = 0,
      Key? key})
      : super(key: key);
  List<Widget> body;
  double leftPadding;
  double rightPadding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          // appBar: AppBar(
          //   leading: BackButton(
          //     onPressed: () {},
          //   ),
          // ),
          body: SingleChildScrollView(
              child: Padding(
        padding:  EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: body,
        ),
      ))),
    );
  }
}
