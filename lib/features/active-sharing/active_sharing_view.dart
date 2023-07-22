import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/widgets/custom_text_widget.dart';
import 'package:projectbetweener/auth/widgets/screen_container.dart';

class ActiveSharingView extends StatelessWidget {
  const ActiveSharingView({Key? key}) : super(key: key);
  static String id = '/activeShare';
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(body: [
      CustomText(title: "Active Sharing"),
    ]);
  }
}
