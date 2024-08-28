
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final Function()? onPressed;
  const SendButton({
    super.key, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.send_rounded,
          color: Colors.blue,
        ));
  }
}
