import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton( this.title, {this.onPressed,Key? key}) : super(key: key);
  void Function()? onPressed;
  String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(),
        onPressed: onPressed, child: Text(title));
  }
}
