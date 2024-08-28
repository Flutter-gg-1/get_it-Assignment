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
  }

  Future<void> addNewTweet(Tweet tweet) async {
    allTweets.add(tweet);
    List<Map<String, dynamic>> tweetsAsMap = [];
    for (var tweet in allTweets) {
      tweetsAsMap.add(tweet.toJson());
    }
    await box.write('tweets', tweetsAsMap);
  }

  Future<void> removeTweet({required int tweetId}) async {
    Tweet? tweet =
        allTweets.where((tweet) => tweet.id == tweetId).toList().firstOrNull;
    if (tweet != null) {
      allTweets.remove(tweet);
      List<Map<String, dynamic>> tweetsAsMap = [];
      for (var tweet in allTweets) {
        tweetsAsMap.add(tweet.toJson());
      }
      await box.write('tweets', tweetsAsMap);
    } else {
      // ERROR!
    }
  }
}
