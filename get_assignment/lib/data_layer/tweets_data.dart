import 'package:get_assignment/models/task_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetsData {
  List<TweetModel> allTwets = [
    TweetModel(id: 1, title: "good morning every one"),
    TweetModel(id: 2, title: "i am happy today and every day")
  ];

  final box = GetStorage();

  // List<String> allTwets2 = [];

  addNewTweet({required String tweet}) {
    allTwets.add(TweetModel(id: 3, title: tweet));
    saveTweet();
  }

  saveTweet() async {
    await box.write("tweet", allTwets);
  }
}
