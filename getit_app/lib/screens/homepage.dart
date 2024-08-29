import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_app/data/tweet_data.dart';
import 'package:getit_app/widgits/add_tweet_button.dart';
import 'package:getit_app/widgits/tweet.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: SvgPicture.asset(  'assets/Twitter Logo.svg'),
       bottom: const PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: Divider(height: 1),
      )
      ),
      floatingActionButton:  TweetButton(),
      body: Center(
        child: ListView(
          children:  GetIt.I
                      .get<TweetData>()
                      .allTweets
                      .map((e) => Tweet(
                            tweet: e.tweet,
                          ))
                      .toList(),
        ),
      ),
    );
  }
}



