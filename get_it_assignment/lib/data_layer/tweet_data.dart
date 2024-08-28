import 'package:get_it_assignment/model/tweet_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetData {
  late List<TweetModel> tweets = [];
    final box = GetStorage();
  

  addNewTask({required TweetModel newTweet}) {
    tweets.add(newTweet);
    saveTasks();
  }

  //?--------- save all tasks
  saveTasks() async {
    List<Map<String, dynamic>> tasksAsMap = [];
    for (var element in tweets) {
      tasksAsMap.add(element.toJson());
    }
    await box.write("tasks", tasksAsMap);
  }

}