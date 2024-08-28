import 'package:assignment/models/tweet_model.dart';

class TweetData {
  List<TweetModel> tweets = [];

  addTweet(TweetModel newTweet) {
    tweets.add(newTweet);
  }

  deleteTweet({required int id}) {
    TweetModel removedTweet = TweetModel(tweet: "", id: 0);
    for (var element in tweets) {
      if (element.id == id) {
        removedTweet = element;
      }
    }
    tweets.remove(removedTweet);
  }
}
