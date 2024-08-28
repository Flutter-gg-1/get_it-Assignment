import 'package:flutter/material.dart';
import 'package:get_asg/data_handle/git_it.dart';
import 'package:get_asg/data_handle/models/tweet_model.dart';
import 'package:get_asg/widget/add_tweet_widget.dart';
import 'package:get_asg/widget/tweet_widget.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isShowTweet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isShowTweet == false
          ? FloatingActionButton(
              backgroundColor: const Color(0xff4C9EEB),
              child: const Icon(
                FontAwesome.pen_clip_solid,
                color: Colors.white,
              ),
              onPressed: () {
                isShowTweet = true;

                setState(() {});
              },
            )
          : null,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: const Icon(
          EvaIcons.twitter,
          color: Color(0xff4C9EEB),
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(
            height: 30,
            // child: Text("hello"),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: getIt.get<TweetModel>().tweetList.map(
                  (e) {
                    return TweetWidget(
                      tweetDataModel: e,
                      onPressed: () {
                        getIt.get<TweetModel>().delTweet(e.id);

                        setState(() {});
                      },
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          isShowTweet == true
              ? AddTweetWidget(
                  onSubmitted: (val) {
                    getIt.get<TweetModel>().addTweet(val);
                    setState(() {});
                  },
                  onPressed: () {
                    isShowTweet = false;

                    setState(() {});
                  },
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
