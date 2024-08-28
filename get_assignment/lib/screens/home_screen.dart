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
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.arrow_outward),
        // title: Image.asset("assets/Twitter Logo.png"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff4C9EEB),
        onPressed: () {
          context.push(screen: const AddTweets());
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          //from custom widget
          const tweets(
            text: "helloo",
          ),
          //from the git
          Column(
              children: GetIt.I
                  .get<TweetsData>()
                  .allTwets
                  .map((e) => tweets(
                        text: e.title,
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
