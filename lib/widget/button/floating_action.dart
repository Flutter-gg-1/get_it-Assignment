import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:learn_get_it/src/post_screen.dart';

class FloatinButton extends StatelessWidget {
  const FloatinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PostScreen(),
            ));
      },
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
