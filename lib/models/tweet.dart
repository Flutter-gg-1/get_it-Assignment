class Tweet {
  final int tweetId;
  final String tweetContent;

  Tweet({required this.tweetId, required this.tweetContent});

  factory Tweet.fromJson(Map<String,dynamic> json) {
    return Tweet(tweetId: json['TweetId'], tweetContent: json['TweetContent']);
  }

  Map<String, dynamic> toJson() {
    return {
      'TweetId' : tweetId,
      'TweetContent' : tweetContent
    };
  }
}