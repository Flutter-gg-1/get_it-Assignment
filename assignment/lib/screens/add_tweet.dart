import 'dart:math';

import 'package:assignment/data_layer/tweet_data.dart';
import 'package:assignment/models/tweet_model.dart';
import 'package:assignment/widgets/buttons/custom_button.dart';
import 'package:assignment/widgets/fields/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AddTweet extends StatefulWidget {
  const AddTweet({super.key});

  @override
  State<AddTweet> createState() => _AddTweetState();
}

class _AddTweetState extends State<AddTweet> {
  @override
  Widget build(BuildContext context) {
    TextEditingController tweetController = TextEditingController();
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
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 50,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomField(
                  hint: "What is happening?",
                  controller: tweetController,
                  onSubmitted: (p0) {
                    TweetModel newTweet = TweetModel(
                        tweet: tweetController.text,
                        id: Random().nextInt(9999));
                    GetIt.I.get<TweetData>().addTweet(newTweet);
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 30),
                CustomButton(
                  label: "Cancel",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
