import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,required this.onSubmitted,
  });
  final Function(String) onSubmitted;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(),
          hintText: "Message",
          fillColor: Color(0xffE7ECF0),
          
        ),
        onSubmitted:  onSubmitted,
      ),
    );
  }
}
