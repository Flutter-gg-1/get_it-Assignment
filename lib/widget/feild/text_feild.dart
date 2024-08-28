
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String? hintText;
  const CustomTextFeild({
    super.key,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(41),
      color: const Color(0xFFE7ECF0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF687684)),
          enabledBorder: InputBorder.none,
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.only(left: 20),
        ),
      ),
    );
  }
}
