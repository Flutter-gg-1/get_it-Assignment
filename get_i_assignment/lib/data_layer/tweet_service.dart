import 'package:get_storage/get_storage.dart';
import 'package:twitter_app/models/tweet.dart';

class TweetService {
  final GetStorage storage = GetStorage();
  final String tweetsKey = 'tweets';

  
  List<Tweet> getTweets() {
    final data = storage.read<List<dynamic>>(tweetsKey);

    if (data != null) {
      try {
        return data.map((item) {
          if (item is Map) {
            return Tweet.fromMap(Map<String, dynamic>.from(item));
          }
          throw TypeError(); 
        }).toList();
      } catch (e) {
        print('Error parsing stored tweets: $e');
      }
    }
    return [];
  }

  
  void addTweet(Tweet tweet) {
    final tweets = getTweets();
    tweets.add(tweet);
    storage.write(tweetsKey, tweets.map((e) => e.toMap()).toList());
  }

  
  void removeTweet(Tweet tweet) {
    final tweets = getTweets();
    tweets.removeWhere((t) => t.timestamp == tweet.timestamp);
    storage.write(tweetsKey, tweets.map((e) => e.toMap()).toList());
  }
}
