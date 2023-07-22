import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/widgets/custom_button.dart';
import 'package:projectbetweener/auth/widgets/custom_image_widget.dart';
import 'package:projectbetweener/auth/widgets/custom_social_button.dart';
import 'package:projectbetweener/auth/widgets/custom_text_widget.dart';
import 'package:projectbetweener/auth/widgets/input_text_widget.dart';
import 'package:projectbetweener/auth/widgets/screen_container.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  static String id = '/loginview';

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    return ScreenContainer(
        body:[
        const CustomImage("assets/images/img.png", 254, 152),
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
        CustomButton(
          "LOGIN",
          onPressed: () {},
        ),
         CustomText(title: "-  or  -", topPadding: 24),
        CustomSocialButton(
          title: "Sign In With Google".toUpperCase(),
          color: Colors.red,
        )]
     );
  }
}
