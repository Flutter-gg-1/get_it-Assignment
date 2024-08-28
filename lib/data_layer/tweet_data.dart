import 'package:get_storage/get_storage.dart';
import 'package:learn_get_it/model/tweet_model.dart';

class TweetData {
  List<TweetModel> tweets = [];
  final box = GetStorage();

  addNewTweet({required TweetModel tweet}){
   tweets.add(tweet);
  }
}
