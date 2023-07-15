import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/services/auth_services.dart';
import 'package:projectbetweener/auth/widgets/custom_button.dart';
import 'package:projectbetweener/auth/widgets/input_text_widget.dart';

class RegisterView extends StatelessWidget {
  static String id = "/register_view";

  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          InputText(_nameController,"John Doe","Name"),
          InputText(_emailController,"johndoe@gmail.com","Email",),
          CustomButton(onPressed: (){
            AuthServices().register("name", "email3@test.net","test","test");
          },"Register"),
        ],
      ),
    );
  }
}
