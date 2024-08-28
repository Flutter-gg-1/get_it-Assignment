import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_app/screens/add_tweet_screen.dart';
import 'package:twitter_app/models/tweet.dart';
import 'package:twitter_app/widgets/textfield/tweet_input_field.dart';
import 'package:twitter_app/widgets/listView/tweet_list.dart';
import '../data_layer/tweet_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TweetService _tweetService = GetIt.I<TweetService>();
  final TextEditingController _tweetController = TextEditingController();
  bool _isTextFieldVisible = false; 
  Future<void> _navigateToAddTweetScreen() async {
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
              tweets: _tweetService.getTweets(),
              onDelete: (tweet) {
                _tweetService.removeTweet(tweet);
                setState(() {});
              },
            ),
          ),
          if (_isTextFieldVisible)
            TweetInputField(
              controller: _tweetController,
              onSend: () {
                if (_tweetController.text.isNotEmpty) {
                  _tweetService.addTweet(Tweet(
                    content: _tweetController.text,
                    timestamp: DateTime.now(),
                  ));
                  _tweetController.clear();
                  setState(() {
                    _isTextFieldVisible =
                        false; 
                  });
                }
              },
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddTweetScreen,
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
