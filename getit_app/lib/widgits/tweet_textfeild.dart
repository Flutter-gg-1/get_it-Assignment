import 'package:flutter/material.dart';

class TweetTextfeild extends StatelessWidget {
  const TweetTextfeild({super.key, required this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: TextField(
    controller: controller,
    decoration:  InputDecoration(
      hintText: 'What is happening?',
      border: InputBorder.none,
      fillColor: Color.fromARGB(255, 231, 236, 240),
      filled: true, 
    ),
  ),
);
  }
}