import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 350,
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF5F5F5),
          border: InputBorder.none,
          hintText: 'What\'s happening?',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
