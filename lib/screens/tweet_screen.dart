import 'package:flutter/material.dart';
import 'package:get_it_getstorage/helper/extension/screen.dart';
import 'package:get_it_getstorage/widgets/custom_tweet.dart';

class TweetScreen extends StatefulWidget {
  const TweetScreen({super.key});

  @override
  State<TweetScreen> createState() => _TweetScreenState();
}

class _TweetScreenState extends State<TweetScreen> {
  TextEditingController tweetsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFFFFFF),
        title: Image.asset("assets/Twitter Logo.png"),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size(context.getWidth(), context.getHeight() / 60),
            child: Container(
              color: const Color(0xffBDC5CD),
              height: 0.5,
            )),
      ),
      body: SafeArea(child: AddTweets()),
    );
  }
}
