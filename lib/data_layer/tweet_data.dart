import 'package:assignment15/models/tweet_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetData {
  List<TweetModel> tweets = [];
  final box = GetStorage();

  TweetData() {
    loadTweets();
  }

  removeTweet({required int id}) {
    tweets.removeWhere((item) => item.id == id);
  }

  addNewTweet({required TweetModel newTweet}) {
    tweets.add(newTweet);
    saveTweet();
  }

  saveTweet() async {
    List<Map<String, dynamic>> allTweets = [];
    for (var element in tweets) {
      allTweets.add(element.toJson());
    }
    await box.write("tweets", allTweets);
  }

  loadTweets() {
    if (box.hasData("tweets")) {
      List<Map<String, dynamic>> tweetsSaved =
          List.from(box.read("tweets")).cast<Map<String, dynamic>>();
      for (var element in tweetsSaved) {
        tweets.add(TweetModel.fromJson(element));
      }
    }
  }
}
