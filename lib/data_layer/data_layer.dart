import 'package:get_storage/get_storage.dart';
import 'package:twitter_app/models/data_models.dart';

class TweetData{
  List<TweetModel> tweets = [];
  final localStorage = GetStorage();

  TweetData(){
    final List<dynamic>? tweetsList = localStorage.read('tweets');
    if(tweetsList != null){
      tweets = tweetsList.map((e) => TweetModel.fromJson(e)).toList();
    }
  }

  void addTweet(TweetModel tweet){
    tweets.add(tweet);
    localStorage.write('tweets', tweets.map((e) => e.toJson()).toList());
  }

  void deleteTweet(TweetModel tweet){
    tweets.remove(tweet);
    localStorage.write('tweets', tweets.map((e) => e.toJson()).toList());
  }

  void updateTweet(TweetModel oldTweet, TweetModel newTweet){
    tweets.remove(oldTweet);
    tweets.add(newTweet);
    localStorage.write('tweets', tweets.map((e) => e.toJson()).toList());
  }
}