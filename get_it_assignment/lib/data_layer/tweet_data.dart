import 'package:get_it_assignment/model/tweet_model.dart';

class TweetData {
  late List<TweetModel> tweets = [];

  addTweet({required TweetModel tweet}) {
    tweets.add(tweet);
  }
}
