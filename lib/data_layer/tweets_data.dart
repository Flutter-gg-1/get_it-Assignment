import 'package:get_storage/get_storage.dart';

class TweetsData {
  List<String> tweets = [];
  final box = GetStorage();

  TweetsData() {
    loadTweet();
  }

  addTweet(String newTweet) {
    tweets.add(newTweet);
    saveTweet();
  }

  deleteTweet(String tweet) {
    tweets.remove(tweet);
    saveTweet();
  }

  saveTweet() async {
    await box.write("tweet", tweets);
  }

  loadTweet() {
    if (box.hasData("tweet")) {
      tweets = List.from(box.read("tweet")).cast<String>();
    }
  }

}
