import 'package:assignment/widgets/buttons/custom_button.dart';
import 'package:assignment/widgets/fields/custom_field.dart';
import 'package:flutter/material.dart';

class AddTweet extends StatelessWidget {
  const AddTweet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          shape: const Border.fromBorderSide(BorderSide(
            color: Color.fromARGB(94, 158, 158, 158),
          )),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image.asset(
            "assets/Logo_Twitter.png",
            scale: 11,
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.only(
            bottom: 50,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomField(hint: "What is happening?"),
                SizedBox(height: 30),
                CustomButton(label: "Cancel")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
