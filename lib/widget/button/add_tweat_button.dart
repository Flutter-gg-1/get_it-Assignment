import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddTweatButton extends StatelessWidget {
  const AddTweatButton({
    super.key, this.onPressed,
  });
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff4C9EEB),
      enableFeedback: true,
      shape: const CircleBorder(),
      onPressed: onPressed,
      child: const FaIcon(color: Colors.white, FontAwesomeIcons.plus),
    );
  }
}
