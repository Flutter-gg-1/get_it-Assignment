import 'package:flutter/material.dart';
import 'package:get_assignment/data_layer/tweets_data.dart';
import 'package:get_assignment/helper/screen_size.dart';
import 'package:get_it/get_it.dart';

class TextToWrite extends StatelessWidget {
  const TextToWrite({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 600),
          width: context.getWidth(divide: 1.2),
          child: TextField(
            minLines: 1,
            maxLines: (10),
            controller: controller,
            decoration: const InputDecoration(
                hintText: "What is happening?",
                filled: true,
                fillColor: Color(0xffE7ECF0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
            onSubmitted: (value) {
              GetIt.I.get<TweetsData>().addNewTweet(tweet: value);
              print(GetIt.I.get<TweetsData>().allTwets);
            },
          ),
        )
      ],
    );
  }
}
