import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({required this.onPressed,Key? key}) : super(key: key);
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Color(0xff21274c),
      child: const Icon(Icons.add),
    );
  }
}
