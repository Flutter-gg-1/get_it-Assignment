import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_app/screens/add_tweet_screen.dart';
import 'package:twitter_app/models/tweet.dart';
import 'package:twitter_app/widgets/textfield/tweet_input_field.dart';
import 'package:twitter_app/widgets/listView/tweet_list.dart';
import '../data_layer/tweet_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final TweetService tweetService = GetIt.I<TweetService>();
  final TextEditingController tweetController = TextEditingController();
  bool isTextFieldVisible = false; 
  Future<void> navigateToAddTweetScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddTweetScreen()),
    );

    if (result == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.asset(
          'assets/icons/twitter_icon.png', 
          height: 30,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: TweetList(
              tweets: tweetService.getTweets(),
              onDelete: (tweet) {
                tweetService.removeTweet(tweet);
                setState(() {});
              },
            ),
          ),
          if (isTextFieldVisible)
            TweetInputField(
              controller: tweetController,
              onSend: () {
                if (tweetController.text.isNotEmpty) {
                  tweetService.addTweet(Tweet(
                    content: tweetController.text,
                    timestamp: DateTime.now(),
                  ));
                  tweetController.clear();
                  setState(() {
                    isTextFieldVisible =
                        false; 
                  });
                }
              },
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: navigateToAddTweetScreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.blue,
        child: Image.asset(
          'assets/icons/custom_add_icon.png',
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
