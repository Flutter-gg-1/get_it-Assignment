import 'package:get_storage/get_storage.dart';
import '../model/tweet.dart';

class DataMgr {
  List<Tweet> allTweets = [];
  final box = GetStorage();

  DataMgr() {
    _fetchData();
  }

  void _fetchData() {
    _fetchTweets();
  }

  void _fetchTweets() {
    List<Map<String, dynamic>> storageTweets = [];
    if (box.read('tweets') != null) {
      storageTweets =
          List.from(box.read('tweets')).cast<Map<String, dynamic>>();
      for (var task in storageTweets) {
        allTweets.add(Tweet.fromJson(task));
      }
    }

    void addNewTweet(Tweet tweet) async {
      allTweets.add(tweet);
      List<Map<String, dynamic>> tweetsAsMap = [];
      for (var tweet in allTweets) {
        tweetsAsMap.add(tweet.toJson());
      }
      await box.write('tweets', tweetsAsMap);
    }

    void removeTweet(int tweetId) async {
      Tweet? tweet =
          allTweets.where((tweet) => tweet.id == tweetId).toList().firstOrNull;
      if (tweet != null) {
        allTweets.remove(tweet);
        var tweetsAsMap = box.read('tweets');
        tweetsAsMap.remove(tweet.toJson());
        await box.remove(tweet.toJson());
      } else {
        // ERROR Alert!
      }
    }
  }
}
