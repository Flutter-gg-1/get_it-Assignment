import 'package:get_storage/get_storage.dart';
import '../models/tweet.dart';

class TweetData {
  List<Tweet> tweets = [];
  final box = GetStorage();

  TweetData() {
    loadTweets();
  }

  addNewTweet(Tweet tweet) {
    tweets.add(tweet);
    saveTweet();
  }

  deleteTweet(Tweet tweet){
    tweets.remove(tweet);
    saveTweet();
  }

  saveTweet() async {
    List<Map<String, dynamic>> listOfTweets = [];
    for (var tweet in tweets) {
      listOfTweets.add(tweet.toJson());
    }
    await box.write('tweets', listOfTweets);
  }

  loadTweets() async {
    List<Map<String, dynamic>> listOfTweets =
        List.from(await box.read('tweets')).cast<Map<String, dynamic>>();

    for (var tweet in listOfTweets) {
      tweets.add(Tweet.fromJson(tweet));
    }
  }
}
