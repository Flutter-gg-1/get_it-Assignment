import 'package:flutter/material.dart';
import 'package:get_assignment/helper/screen_size.dart';

class tweets extends StatelessWidget {
  const tweets({super.key, required this.text, this.controller});
  final TextEditingController? controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.getWidth(divide: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ));
  }
}
