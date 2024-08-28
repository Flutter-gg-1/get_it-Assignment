import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FloatinButton extends StatelessWidget {
  final Function()? onPressed;
  const FloatinButton({
    super.key, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      backgroundColor: const Color.fromARGB(255, 30, 124, 212),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            size: 16,
            color: Colors.white,
          ),
          Icon(
            Bootstrap.feather,
            color: Colors.white,
            weight: 6,
          ),
        ],
      ),
    );
  }
}
