import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../data_layer/tweet_data.dart';
import '../helper/navigators.dart';
import '../widgets/custom_abb_bar.dart';
import '../widgets/custom_tweet_data.dart';
import 'add_tweet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(screen: const AddTweet(), onValue: (onvalue) { 
            if(onvalue != null){
              setState(() {
              });
            }
           });
        },
        backgroundColor: const Color(0xff4C9EEB),
        shape: const CircleBorder(side: BorderSide.none),
        child: Image.asset("assets/Add text icon.png"),
      ),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70), child: CustomAbbBar()),
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: GetIt.I
                  .get<TweetData>()
                  .tweetData
                  .map((e) => CustomTweetData(
                        tweetData: e,
                        onPressed: () {
                          GetIt.I.get<TweetData>().removeTweet(id: e.id);
                          setState(() {
                            
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
        ],
      )),
    );
  }
}
