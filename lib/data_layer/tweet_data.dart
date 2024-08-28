import 'package:get_storage/get_storage.dart';

import '../model/data_model.dart';

class TweetData {
  List<DataModel> tweetData = [];
  final box = GetStorage();

  TweetData(){
    loadTweet();
  }

  addNewTweet({required DataModel tweet}){
    tweetData.add(tweet);
  }

  removeTweet({required int id}){
    tweetData.removeWhere((e) => e.id == id);
    saveTweet();
  }

  saveTweet() async{
    List<Map<String, dynamic>> saveTweet = [];
    for (var element in tweetData) {
      saveTweet.add(element.toJson());
    }
    await box.write("tweet", saveTweet);
  }

  loadTweet() {
    if(box.hasData("tweet")){
      List<Map<String, dynamic>> loadTweet = List.from(box.read("tweet")).cast<Map<String, dynamic>>();
      for (var element in loadTweet) {
        tweetData.add(DataModel.fromJson(element));
      }
    }
  }
}