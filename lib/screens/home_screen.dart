import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_getstorage/helper/extension/screen.dart';
import 'package:get_it_getstorage/tweet_data/data.dart';
import 'package:get_it_getstorage/widgets/custom_float_button.dart';
import 'package:get_it_getstorage/widgets/custom_tweets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
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
      floatingActionButton: const FloatButton(),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: GetIt.I.get<TweetData>().tweets.length,
              itemBuilder: (context, index) {
                final tweet = GetIt.I.get<TweetData>().tweets[index];
                return TweetContent(
                  tweetContent: tweet.tweet,
                  onClicked: () async {
                    await GetIt.I.get<TweetData>().deleteTweet(id: index);
                    setState(() {});
                  },
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
