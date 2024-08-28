import 'package:get_storage/get_storage.dart';
import 'package:twitter_app/models/tweet.dart';

class TweetService {
  final GetStorage _storage = GetStorage();
  final String _tweetsKey = 'tweets';

  // Fetch all tweets
  List<Tweet> getTweets() {
    final data = _storage.read<List<dynamic>>(_tweetsKey);

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

  // Add a tweet
  void addTweet(Tweet tweet) {
    final tweets = getTweets();
    tweets.add(tweet);
    _storage.write(_tweetsKey, tweets.map((e) => e.toMap()).toList());
  }

  // Remove a tweet
  void removeTweet(Tweet tweet) {
    final tweets = getTweets();
    tweets.removeWhere((t) => t.timestamp == tweet.timestamp);
    _storage.write(_tweetsKey, tweets.map((e) => e.toMap()).toList());
  }
}
