import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';
import 'package:get_it_assignment/data_layer/tweets_data.dart';
import 'package:get_it_assignment/helper/extintions/nav.dart';
import 'package:get_it_assignment/screens/add_tweets.dart';
import 'package:get_it_assignment/widgets/buttons/custom_floating_button.dart';
import 'package:get_it_assignment/widgets/card/custome_app_bar.dart';
import 'package:get_it_assignment/widgets/card/view_tweet_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors().white,
      appBar: AppBar(
        backgroundColor: CustomColors().white,
        title: const CustomeAppBar(),
      ),
      floatingActionButton: CustomFloatingButton(
        onPressed: () {
          context.pushScreen(
              screen: const AddTweets(),
              onBack: (value) {
                if (value == true) {
                  setState(() {});
                }
              });
        },
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: GetIt.I.get<TweetsData>().allTweets.length,
            itemBuilder: (context, index) {
              final tweet = GetIt.I.get<TweetsData>().allTweets[index];
              return ViewTweetCard(
                tweet: tweet,
                onPressed: () async {
                  await GetIt.I.get<TweetsData>().removeTweet(index);
                  setState(() {});
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
