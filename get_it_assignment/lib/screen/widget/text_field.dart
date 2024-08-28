import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({super.key, required myController});

   TextEditingController? myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      minLines: 1,
      maxLines: 5,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Write here',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
