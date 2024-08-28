import 'package:flutter/material.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';
import 'package:get_it_assignment/helper/extintions/screen.dart';

class CustomTextFelid extends StatelessWidget {
  const CustomTextFelid({super.key, this.minLines = 1, this.textController});
  final int? minLines;
  final TextEditingController? textController;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 330),
      width: context.getWidth(),
      child: TextField(
        controller: textController,
        minLines: minLines,
        maxLines: 10,
        decoration: InputDecoration(
            hintText: "What is happening?",
            hintStyle: TextStyle(color: CustomColors().darkGrey, fontSize: 16),
            filled: true,
            fillColor:CustomColors().grey,
            border: InputBorder.none),
      ),
    );
  }
}
