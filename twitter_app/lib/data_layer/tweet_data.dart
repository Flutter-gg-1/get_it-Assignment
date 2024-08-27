import '../model/tweet_model.dart';

class TweetData {
  List<TweetModel> allTweet = [
    TweetModel(id: 1001, tweet: "ssss"),
    TweetModel(id: 1002, tweet: "aa"),
    TweetModel(id: 1003, tweet: "scdww"),
    TweetModel(id: 1004, tweet: "nm;kfjnwkrfw"),
    TweetModel(id: 1005, tweet: "iodmw;edwend;wo"),
    TweetModel(id: 1001, tweet: "ssss"),
    TweetModel(id: 1002, tweet: "aa"),
    TweetModel(id: 1003, tweet: "scdww"),
    TweetModel(id: 1004, tweet: "nm;kfjnwkrfw"),
    TweetModel(id: 1005, tweet: "iodmw;edwend;wo"),
  ];

  addTask(TweetModel tweetData) {
    allTweet.add(tweetData);
  }
}
