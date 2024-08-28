import 'package:flutter/material.dart';
import 'package:twitter_app/models/tweet.dart';
import 'package:twitter_app/data_layer/tweet_service.dart';
import 'package:get_it/get_it.dart';

class AddTweetScreen extends StatefulWidget {
  @override
  _AddTweetScreenState createState() => _AddTweetScreenState();
}

class _AddTweetScreenState extends State<AddTweetScreen> {
  final TextEditingController _tweetController = TextEditingController();
  final TweetService _tweetService = GetIt.I<TweetService>();

  void _sendTweet() {
    if (_tweetController.text.isNotEmpty) {
      _tweetService.addTweet(
        Tweet(
          content: _tweetController.text,
          timestamp: DateTime.now(),
        ),
      );
      Navigator.pop(
          context, true); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Cancel and go back
          },
        ),
        title: Text(
          'New Tweet',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _tweetController,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'What’s happening?',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey[200], // Grey inside color
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.blue),
                    onPressed: _sendTweet,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 207, 205, 205),
                  minimumSize:
                      Size(double.infinity, 50), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: Text('Cancel', style: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
