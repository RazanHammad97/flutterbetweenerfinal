import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/widgets/custom_image_widget.dart';

class HomeIcons extends StatelessWidget {
  const HomeIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          child: CustomImage("assets/images/scan_line.png", 24, 24),
          onPressed: () {},
        ),
        TextButton(
          child: CustomImage("assets/images/search.png", 24, 24),
          onPressed: () {},
        )
      ],
    );
  }
}
