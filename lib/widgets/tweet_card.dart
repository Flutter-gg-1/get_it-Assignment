import 'package:flutter/material.dart';
import 'package:get_it_assignment/models/tweet.dart';
import 'package:google_fonts/google_fonts.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;
  final Function()? onDelete;
  const TweetCard({super.key, required this.tweet, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 35,top: 59),
          child: Text(
            tweet.tweetContent,
            style: GoogleFonts.actor(fontSize: 16)
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              alignment: Alignment.bottomCenter,
              icon: const Icon(Icons.delete, color: Colors.red,),
              onPressed: ()=> onDelete!()
            ),
          ],
        ),
        Divider(thickness: 0, color: Colors.black26,)
      ],
    );
  }
}