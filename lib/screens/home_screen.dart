import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/data/all_tweets.dart';
import 'package:get_it_assignment/extensions/screen_push.dart';
import 'package:get_it_assignment/extensions/screen_size.dart';
import 'package:get_it_assignment/models/tweet.dart';
import 'package:get_it_assignment/screens/tweet_screen.dart';
import 'package:get_it_assignment/widgets/tweet_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(context.getWidth(), 59),
        child: AppBar(
          forceMaterialTransparency: true, // prevent change color when scroll
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size(context.getWidth(), double.minPositive),
            child: const Divider(thickness: 0,color: Colors.black26)),
          title: Image.asset('assets/twitter_logo.png', width: 27, height: 22,) ,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: GetIt.I.get<AllTweets>().tweets.length,
                itemBuilder: (context, index) {
                  Tweet currentTweet = GetIt.I.get<AllTweets>().tweets[index];
                  return TweetCard(
                    tweet: currentTweet,
                    onDelete: (){
                      GetIt.I.get<AllTweets>().deleteTweet(id: currentTweet.tweetId);
                      setState(() {});
                    }
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 95),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff4c9eeb),
          shape: const OvalBorder(),
          onPressed: (){
            context.push(target: const TweetScreen(), saveData: (p0) {
              if(p0==true) {
                setState(() {});
              }
            });
          },
          child: Image.asset('assets/new_tweet.png', scale: 2,)
        ),
      ),
    );
  }
}