import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key, required this.floatinOnPressed});
  final Function()? floatinOnPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff4C9EEB),
      onPressed: floatinOnPressed,
      child: Image.asset("assets/Add text icon.png"),
    );
  }
}
