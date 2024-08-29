import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewTweetIcon extends StatelessWidget {
  const NewTweetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Icon(
          FontAwesomeIcons.featherAlt,
          size: 24,
          color: Colors.white,
        ),
        // Positioned(
        //   left: 0,
        //   top: 0,
        //   child: Container(
        //     padding: const EdgeInsets.all(2),
        //     child: const Icon(
        //       Icons.add,
        //       size: 15,
        //       color: Colors.blue,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
