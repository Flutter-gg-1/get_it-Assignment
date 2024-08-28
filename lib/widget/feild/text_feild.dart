
import 'package:flutter/material.dart';
import 'package:learn_get_it/helper/extinsion/size_configration.dart';

class CustomTextFeild extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const CustomTextFeild({
    super.key,
    this.hintText, this.controller, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth()*0.7,
      margin: const EdgeInsets.only(top: 41,bottom: 41,left: 41),
      color: const Color(0xFFE7ECF0),
      child: TextField(
        controller: controller,
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
