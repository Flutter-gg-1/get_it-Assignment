import 'package:flutter/material.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onClick, required this.title, required this.color});
  final Function()? onClick;
  final String title;
  final Color color;
  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: CustomColors().black,
            fixedSize: const Size(380, 10),
            textStyle: const TextStyle(fontSize: 19, fontFamily: 'Roboto')),
        onPressed: onClick,
        child: Text(title));
  }
}
