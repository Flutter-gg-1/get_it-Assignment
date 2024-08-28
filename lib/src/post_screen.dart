import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:learn_get_it/data_layer/tweet_data.dart';
import 'package:learn_get_it/model/tweet_model.dart';
import 'package:learn_get_it/widget/button/long_button.dart';
import 'package:learn_get_it/widget/button/send_button.dart';
import 'package:learn_get_it/widget/feild/text_feild.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Brand(Brands.twitter),
        centerTitle: true,
        shape: LinearBorder.bottom(
            side: const BorderSide(color: Colors.grey, width: 0.2)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFeild(
                    hintText: 'What is happening?',
                    controller: controller,
                  ),
                  SendButton(onPressed: () {
                    if (controller.text.isNotEmpty) {
                      GetIt.I.get<TweetData>().addNewTweet(
                          tweet: TweetModel(
                              id: GetIt.I.get<TweetData>().tweets.length + 1,
                              content: controller.text));
                      Navigator.pop(context, true);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Empty value')));
                    }
                  })
                ],
              ),
              LongButton(
                title: 'Cancel',
                onPressed: () => Navigator.pop(context, true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
