import 'package:get_asg/data_handle/models/tweet_data_model.dart';

class TweetModel {
  List<TweetDataModel> tweetList = [];

  void delTweet(int id) {
    for (int i = 0; i < tweetList.length; i++) {
      if (tweetList[i].id == id) {
        tweetList.removeAt(i);
      }
    }
  }




  void addTweet(String tex){


    tweetList.add(TweetDataModel(text: tex));

  }
}
