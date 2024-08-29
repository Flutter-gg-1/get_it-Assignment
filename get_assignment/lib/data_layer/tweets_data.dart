import 'dart:math';

import 'package:get_assignment/models/task_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetsData {
  List<TweetModel> allTwets = [];

  final box = GetStorage();
  TweetsData() {
    loadTweets();
  }

  addNewTweet({required String tweet}) {
    int id = Random().nextInt(1000);
    while (allTwets.map((e) => e.id).toList().contains(id)) {
      id = id = Random().nextInt(1000);
    }
    allTwets.add(TweetModel(id: id, title: tweet));
    saveTweet();
  }

  saveTweet() async {
    await box.write("tweet", allTwets);
  }

  loadTweets() {
    if (box.hasData("tweet")) {
      List<Map<String, dynamic>> TweetsAsJson =
          List.from(box.read("tweet")).cast<Map<String, dynamic>>();
      for (var element in TweetsAsJson) {
        allTwets.add(TweetModel.fromJson(element));
      }
    }
  }

  deleteTweet({required int id}) {
  allTwets.removeWhere((tweet) => tweet.id == id);
  saveTweet();
  // print("Tweet with ID $id deleted");  
  // print(allTwets);  
}

}
