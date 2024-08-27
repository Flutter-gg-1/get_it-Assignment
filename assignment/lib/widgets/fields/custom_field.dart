import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key, required this.hint, this.controller, this.onSubmitted});
  final String? hint;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 40,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: const Color(0xffE7ECF0),
            filled: true,
            hintStyle: const TextStyle(
                color: Color(0xff687684),
                fontSize: 14,
                fontWeight: FontWeight.normal),
            hintText: hint,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none, borderRadius: BorderRadius.zero)),
        onSubmitted: onSubmitted,
      ),
    );
  }
}
