import 'package:flutter/material.dart';
import 'package:twitter_app/helper/extensions/screen.dart';

import '../models/tweet.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;
  const TweetCard({super.key, required this.tweet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight() / 4.2,
      width: context.getWidth(),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 58, bottom: 58, left: 34, right: 78),
            child: Text(
              tweet.content,
              style: const TextStyle(
                  fontSize: 16, color: Color(0xff141619), letterSpacing: -0.3),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {
                    // delete tweet
                  },
                  icon: Image.asset('assets/images/delete.png'))),
          const Divider()
        ],
      ),
    );
  }
}
