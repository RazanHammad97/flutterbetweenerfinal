import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  InputText(this.controller, this.hint, this.inputTitle, {Key? key})
      : super(key: key);
  TextEditingController controller;
  String hint;
  String inputTitle;

  @override
  Widget build(BuildContext context) {
    controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Align(
            child: Text(inputTitle),
            alignment: Alignment.topLeft,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 12,right: 12),
              hintStyle: TextStyle(color: Colors.grey),
              hintText: hint,
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Color(0x2D2B4E)),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
