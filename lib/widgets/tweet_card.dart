import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_app/helper/extensions/screen.dart';

import '../models/tweet.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;
  const TweetCard({super.key, required this.tweet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 30, right: 70),
          child: Text(
            tweet.content,
            style: GoogleFonts.actor(),
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: () {
                  // delete tweet
                },
                icon: Image.asset('assets/images/delete.png'))),
        const Divider(
          height: 0,
        )
      ],
    );
  }
}
