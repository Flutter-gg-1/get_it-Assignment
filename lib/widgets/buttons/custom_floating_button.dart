import 'package:flutter/material.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor:CustomColors().blue,
        shape: const CircleBorder(),
        onPressed: onPressed,
        child: Image.asset("assets/Add_text_icon.png"),
      );
  }
}