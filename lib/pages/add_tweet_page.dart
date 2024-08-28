import 'dart:math';

import 'package:assignment15/components/buttons/custom_button.dart';
import 'package:assignment15/components/textfield/text_field.dart';
import 'package:assignment15/data_layer/tweet_data.dart';
import 'package:assignment15/models/tweet_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class AddTweetPage extends StatefulWidget {
  const AddTweetPage({super.key});

  @override
  State<AddTweetPage> createState() => _AddTweetPageState();
}

class _AddTweetPageState extends State<AddTweetPage> {
  TextEditingController controllerField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1), child: Divider()),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          size: 30,
          color: Color(0xff4C9EEB),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: TextFieldCustom(
              controller: controllerField,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomButton(
              title: "Add",
              onPressed: () {
                GetIt.I.get<TweetData>().addNewTweet(
                    newTweet: TweetModel(
                        id: Random().nextInt(9999),
                        tweet: controllerField.text));
                Navigator.pop(context, true);
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomButton(
              title: "Cancel",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(
            height: 42,
          )
        ],
      ),
    );
  }
}
