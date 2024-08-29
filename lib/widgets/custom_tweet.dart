import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_getstorage/helper/extension/screen.dart';
import 'package:get_it_getstorage/tweet_data/data.dart';

class AddTweets extends StatelessWidget {
  AddTweets({
    super.key,
  });

  final TextEditingController tweetsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 55,
              child: TextField(
                controller: tweetsController,
                decoration: const InputDecoration(
                  label: Text(
                    "What is happening?",
                  ),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xffE7ECF0),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  GetIt.I
                      .get<TweetData>()
                      .addNewTweet(tweetInfo: tweetsController.text);

                  Navigator.pop(context, true);
                },
                icon: const Icon(Icons.send_sharp))
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                height: 50,
                width: context.getWidth(),
                decoration: BoxDecoration(
                    color: const Color(0xffE7ECF0),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
