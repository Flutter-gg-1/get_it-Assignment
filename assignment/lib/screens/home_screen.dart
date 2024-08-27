import 'package:assignment/data_layer/tweet_data.dart';
import 'package:assignment/helper/extensions/nav.dart';
import 'package:assignment/screens/add_tweet.dart';
import 'package:assignment/widgets/tweet_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              context.navTo(
                const AddTweet(),
                (value) {
                  if (value == true) {
                    setState(() {});
                  }
                },
              );
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
        body: Column(
            children: GetIt.I
                .get<TweetData>()
                .tweets
                .map((e) => TweetWidget(tweet: e.tweet))
                .toList()),
      ),
    );
  }
}
