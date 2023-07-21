import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/services/auth_services.dart';
import 'package:projectbetweener/auth/widgets/custom_button.dart';
import 'package:projectbetweener/auth/widgets/custom_image_widget.dart';
import 'package:projectbetweener/auth/widgets/custom_text_widget.dart';
import 'package:projectbetweener/auth/widgets/input_text_widget.dart';
import 'package:projectbetweener/auth/widgets/screen_container.dart';

import '../core/constants.dart';

class RegisterView extends StatelessWidget {
  static String id = "/register_view";

  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    return ScreenContainer(
        body: Column(
      children: [
        CustomImage("${imagePath}img.png", 154, 92),
        InputText(_nameController, "John Doe", "Name"),
        InputText(
          _emailController,
          "johndoe@gmail.com",
          "Email",
        ),
        InputText(
          _passController,
          "*********",
          "Password",
        ),
        CustomButton(onPressed: () {
          AuthServices().register("name", "email3@test.net", "test", "test");
        }, "REGISTER"),
        const CustomText(title: "-  or  -", topPadding: 24),
      ],
    ));
  }
}
