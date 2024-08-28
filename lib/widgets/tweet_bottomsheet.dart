import 'package:flutter/material.dart';
import 'package:twitter_app/data/tweet_data.dart';
import 'package:twitter_app/helper/extensions/screen.dart';
import 'package:twitter_app/helper/get_it.dart';
import 'package:twitter_app/models/tweet.dart';

class TweetBottomSheet extends StatelessWidget {
  const TweetBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    bool noTweets = locator.get<TweetData>().tweets.isEmpty;
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 42),
        height: context.getHeight() / 3.6,
        width: context.getWidth(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              color: const Color(0xffE7ECF0),
              child: TextField(
                controller: controller,
                showCursor: true,
                decoration: const InputDecoration(
                  hintText: 'What is happening?',
                  hintStyle: TextStyle(fontSize: 16, color: Color(0xff687684)),
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
                onSubmitted: (value) {
                  if (controller.text.isNotEmpty) {
                    locator.get<TweetData>().addNewTweet(Tweet(
                        id: noTweets
                            ? 1
                            : locator.get<TweetData>().tweets.last.id + 1,
                        content: value));
                    Navigator.pop(context, true);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(bottom: 300, left: 50, right: 50),
                      content: Text(
                        'Cannot Tweet nothing!!\nWhat is happening?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ));
                  }
                },
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(context.getWidth(), 48),
                    backgroundColor: const Color(0xffE7ECF0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 19, letterSpacing: -0.5, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
