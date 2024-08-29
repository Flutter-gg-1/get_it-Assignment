import 'package:flutter/material.dart';
import 'package:get_assignment/data_layer/tweets_data.dart';
import 'package:get_assignment/helper/nav.dart';
import 'package:get_assignment/screens/add_tweets.dart';
import 'package:get_assignment/widget/tweet_sizebox.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final tweetsData = GetIt.I.get<TweetsData>();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Twitter Logo.png"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff4C9EEB),
          onPressed: () {
            context.push(
              screen: const AddTweets(),
              onBack: (p0) {
                if (p0 == true) {
                  setState(() {});
                }
              },
            );
          },
          shape: const CircleBorder(),
          child: Image.asset("assets/Add text icon.png")),
      body: ListView(
        children: tweetsData.allTwets
            .map((tweet) => tweets(
                  text: tweet.title,
                  id: tweet.id,
                  onDelete: () {
                    setState(() {});
                  },
                ))
            .toList(),
      ),
    );
  }
}
