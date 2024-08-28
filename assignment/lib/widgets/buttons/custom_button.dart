import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, this.onPressed});
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(360, 45),
            foregroundColor: Colors.black,
            elevation: 0,
            textStyle: const TextStyle(fontSize: 16),
            backgroundColor: const Color(0xffE7ECF0)),
        onPressed: onPressed,
        child: Text(label));
  }
}
