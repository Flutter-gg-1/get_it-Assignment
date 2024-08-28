import 'dart:math';

import 'package:get_it_assignment/models/tweet.dart';
import 'package:get_storage/get_storage.dart';

class AllTweets {

  AllTweets() {
    loadTweets();
  }

  final List<Tweet> tweets = [];

  final box = GetStorage();

  // methods
  addTweet({required String tweetContent}) {
    int id = Random().nextInt(1000);
    while(tweets.map((tweet)=>tweet.tweetId).toList().contains(id)) {
      id = Random().nextInt(1000);
    }
    tweets.add(Tweet(tweetId: id, tweetContent: tweetContent));
    saveTweets();
  }

  saveTweets() {
    box.write('tweets', tweets);

    // box = List[dynamic,dynamic,dynamic]
    // box = List[map,map,map]
  }

  loadTweets() {
    if(box.hasData('tweets')) {
      List<Map<String,dynamic>> temp = List.from(box.read('tweets')).cast<Map<String,dynamic>>();
      for(var tweetAsJson in temp) {
        tweets.add(Tweet.fromJson(tweetAsJson));
      }
    }
  }

  deleteTweet({required int id}) {
    tweets.removeWhere((tweet)=>tweet.tweetId == id);
    saveTweets();
  }
}