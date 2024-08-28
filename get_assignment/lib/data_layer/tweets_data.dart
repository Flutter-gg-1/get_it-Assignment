import 'package:get_assignment/models/task_model.dart';

class TweetsData {
  List<TweetModel> allTwets = [
    TweetModel(id: 1, title: "good morning every one"),
    TweetModel(id: 2, title: "i am happy today and every day")
  ];

  // List<String> allTwets2 = [];

  addNewTweet({required String tweet}) {
    allTwets.add(TweetModel(id: 3, title: tweet));
  }
}
