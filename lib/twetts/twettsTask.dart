import 'package:get_storage/get_storage.dart';

class TwetsTask {
  final box = GetStorage();

  void addTwets(String tweet) {
    List<String> tweets = getTwets();

    box.write('tweets', tweets);
  }

  List<String> getTwets() {
    return box.read<List<dynamic>>('tweets')?.cast<String>() ?? [];
  }

  void deleteTweet(int index) {
    List<String> tweets = getTwets();
    if (index >= 0 && index < tweets.length) {
      tweets.removeAt(index);
      box.write('tweets', tweets);
    }
  }
}
