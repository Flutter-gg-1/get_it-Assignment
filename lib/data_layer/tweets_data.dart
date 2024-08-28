import 'package:get_storage/get_storage.dart';

class TweetsData {
  List<String> allTweets = [];
  final box = GetStorage();

  TweetsData() {
    loadTweets();
  }
  //add new tweet
  addTweet({required String tweet}) {
    allTweets.add(tweet);
    saveTweet();
  }

//save tweet
  saveTweet() async {
    await box.write("tweet", allTweets);
  }

//save tweet
  removeTweet(int index) async {
    if (index >= 0 && index < allTweets.length) {
      allTweets.removeAt(index);
      await saveTweet();
    }
  }

//load tweet
  loadTweets() {
    if (box.hasData("tweet")) {
      allTweets = List.from(box.read("tweet")).cast<String>();
    }
  }
}
