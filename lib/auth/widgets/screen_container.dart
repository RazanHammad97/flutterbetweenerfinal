import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
   ScreenContainer({required this.body,Key? key}) : super(key: key);
  Widget body;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          leading: BackButton(
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(child: body)
      ),
    );
  }
}
