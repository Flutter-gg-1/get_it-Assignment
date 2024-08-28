import 'package:assignment/models/tweet_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetData {
  List<TweetModel> tweets = [];

  final box = GetStorage();
  addTweet(TweetModel newTweet) {
    tweets.add(newTweet);
    saveTweet();
  }

  TweetData() {
    loadTweet();
  }
  deleteTweet({required int id}) {
    TweetModel removedTweet = TweetModel(tweet: "", id: 0);
    for (var element in tweets) {
      if (element.id == id) {
        removedTweet = element;
      }
    }
    tweets.remove(removedTweet);
    saveTweet();
  }

  saveTweet() async {
    await box.write("tweets", tweets);
  }

  loadTweet() {
    if (box.hasData('tweets')) {
      List<Map<String, dynamic>> tweetsSaved =
          List.from(box.read('tweets')).cast<Map<String, dynamic>>();
      for (var element in tweetsSaved) {
        tweets.add(TweetModel.fromJson(element));
      }
    }
  }
}
