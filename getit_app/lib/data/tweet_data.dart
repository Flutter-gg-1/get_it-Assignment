import 'package:get_storage/get_storage.dart';
import 'package:getit_app/data_model/model.dart';

class TweetData {
  List<TweetModel> allTweets = [];
  final box = GetStorage();

  TweetData() {
    loadTweets();
  }


  //add data
  addTweet({required TweetModel tweet}) {
    allTweets.add(tweet);
    saveTweet();
  }

  //save data
  saveTweet() async {
    List<Map<String, dynamic>> tweetAsMap = [];
    for (var element in allTweets) {
      tweetAsMap.add(element.toJson());
    }
    await box.write("tweet", tweetAsMap);
  }


  //load data 

  loadTweets() {

    if (box.hasData('tweet')) {
      List<Map<String, dynamic>> tweetSaved =
          List.from(box.read('tweet')).cast<Map<String, dynamic>>();
      for (var element in tweetSaved) {
        allTweets.add(TweetModel.fromJson(element));
      }
    }
  }
}
