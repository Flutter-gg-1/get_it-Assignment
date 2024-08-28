import 'package:flutter/material.dart';
import 'package:get_assignment/helper/screen_size.dart';
import 'package:get_assignment/widget/custom_text_field.dart';

class AddTweets extends StatefulWidget {
  const AddTweets({super.key});

  @override
  State<AddTweets> createState() => _AddTweetsState();
}

class _AddTweetsState extends State<AddTweets> {
  //controller
  TextEditingController? controllerTweet = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.arrow_circle_up_outlined),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: context.getWidth(divide: 1),
          ),
          const TextToWrite(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: context.getWidth(divide: 1.5),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffE7ECF0))),
                  onPressed: () {},
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ))),

     
        ],
      ),
    );
  }
}
