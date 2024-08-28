import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.title});
  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffE7ECF0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
      onPressed: onPressed,
      child:  Center(
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 19, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}
