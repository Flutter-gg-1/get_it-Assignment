import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:learn_get_it/widget/button/long_button.dart';
import 'package:learn_get_it/widget/feild/text_feild.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Brand(Brands.twitter),
        centerTitle: true,
        shape: LinearBorder.bottom(
            side: const BorderSide(color: Colors.grey, width: 0.2)),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextFeild(
                hintText: 'What is happening?',
              ),
              LongButton(
                title: 'Cancel',
              )
            ],
          ),
        ),
      ),
    );
  }
}
