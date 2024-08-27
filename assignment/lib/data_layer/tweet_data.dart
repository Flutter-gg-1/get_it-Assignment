import 'package:assignment/models/tweet_model.dart';

class TweetData {
  List<TweetModel> tweets = [];

  addTweet(TweetModel newTweet) {
    tweets.add(newTweet);
  }
}
