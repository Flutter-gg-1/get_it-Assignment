import 'dart:math';

import 'package:get_it_getstorage/model/tweet_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetData {
  List<TweetModel> tweets = [];

  final box = GetStorage();

  TweetData() {
    loadTask();
  }

  addNewTweet({required String tweetInfo}) {
    String id = Random().nextInt(300).toString();
    tweets.add(TweetModel(id: id, tweet: tweetInfo));
    saveTweet();
  }

  deleteTweet({required int id}) {
    
    tweets.removeAt(id);
    saveTweet();
  }

  //?--------- save all category
  saveTweet() async {
    await box.write("tweet", tweets);
  }

  //?--------- load all data tasks ands categories

  loadTask() {
    List<Map<String, dynamic>> tasksSaved =
        List.from(box.read('tweet')).cast<Map<String, dynamic>>();
    for (var element in tasksSaved) {
      tweets.add(TweetModel.fromJson(element));
    }
  }
}
