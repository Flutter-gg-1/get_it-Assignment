import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:twitter_app/helper/get_it.dart';
import 'package:twitter_app/widgets/tweet_bottomsheet.dart';
import 'package:twitter_app/widgets/tweet_card.dart';

import '../data/tweet_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Icon(
            AntDesign.twitter_outline,
            color: Color(0xff4C9EEB),
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            ...locator.get<TweetData>().tweets.map((tweet) {
              return TweetCard(
                tweet: tweet,
                onDelete: () {
                  locator.get<TweetData>().deleteTweet(tweet);
                  setState(() {});
                },
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff4C9EEB),
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              barrierColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const TweetBottomSheet();
              }).then((value) {
            if (value == true) {
              setState(() {});
            }
          });
        },
        child: Image.asset(
          'assets/images/add.png',
          color: Colors.white,
        ),
      ),
    );
  }
}
