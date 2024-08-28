import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Color(0xffE7ECF0),
        hintStyle: TextStyle(
            color: Color(0xff687684),
            fontSize: 16,
            fontWeight: FontWeight.w400),
        hintText: "What is happening?",
      ),
    );
  }
}
