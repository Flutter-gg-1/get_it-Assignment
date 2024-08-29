import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getit_app/screens/add_tweets.dart';

class TweetButton extends StatelessWidget {
  const TweetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        onPressed: (){
          Navigator.push(context,  MaterialPageRoute(builder: (context) => const AddTweets()));
        },
        child: SvgPicture.asset(  'assets/Add text icon.svg'));

  }
}