import 'package:assignment/helper/extensions/nav.dart';
import 'package:assignment/screens/add_tweet.dart';
import 'package:assignment/widgets/tweet_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: const Color(0xff4C9EEB),
            onPressed: () {
              context.navTo(const AddTweet());
            },
            child: Image.asset("assets/Add_icon.png"),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
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
        body: const Column(
          children: [
            TweetWidget(
                tweet:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercita..")
          ],
        ),
      ),
    );
  }
}
