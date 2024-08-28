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
            border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        )),
      ),
    );
  }
}
