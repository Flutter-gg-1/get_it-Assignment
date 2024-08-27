import 'package:get_storage/get_storage.dart';

import '../model/tweet_model.dart';

class TweetData {
  List<TweetModel> allTweet = [];
  final box = GetStorage();

  TweetData() {
    loadTweet();
  }

  addTweet(TweetModel tweetData) {
    allTweet.add(tweetData);
    saveTweet();
  }

  deleteTweet(TweetModel tweetData) async {
    allTweet.remove(tweetData);
  }

  saveTweet() async {
    List<Map<String, dynamic>> tweetJson = [];
    for (var element in allTweet) {
      tweetJson.add(element.toJson());
    }
    await box.write("tweets", tweetJson);
  }

  loadTweet() {
    if (box.hasData("tweets")) {
      List<Map<String, dynamic>> tweetJson = [];

      tweetJson = List.from(box.read("tweets")).cast<Map<String, dynamic>>();
      for (var element in tweetJson) {
        allTweet.add(TweetModel.fromJson(element));
      }
    }
  }
}
