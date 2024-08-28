import 'package:get_storage/get_storage.dart';
import 'package:learn_get_it/model/tweet_model.dart';

class TweetData {
  List<TweetModel> tweets = [];
  final box = GetStorage();
  TweetData() {
    loadTweet();
  }
  addNewTweet({required TweetModel tweet}) {
    tweets.add(tweet);
    saveTweet();
  }

  Future<void> saveTweet() async {
    List<Map<String, dynamic>> tweetAsMap = [];
    for (var element in tweets) {
      tweetAsMap.add(element.toJson());
    }
    await box.write('tweet', tweetAsMap);
  }

  removeTweet({required int id}) {
    List<TweetModel> toRemove = [];

    for (var element in tweets) {
      if (element.id == id) {
        toRemove.add(element);
      }
    }
    tweets.removeWhere(
      (element) => toRemove.contains(element),
    );
    saveTweet();
  }

  loadTweet() async {
    if (box.hasData('tweet')) {
      List<Map<String, dynamic>> savedTweets =
          List.from(await box.read('tweet')).cast<Map<String, dynamic>>();
      for (var element in savedTweets) {
        tweets.add(TweetModel.fromJson(element));
      }
    }
  }
}
