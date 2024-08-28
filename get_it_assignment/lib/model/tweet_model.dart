class TweetModel {
  final String tweet;

  TweetModel({required this.tweet});

  factory TweetModel.fromJson(Map<String, dynamic> json) {
    return TweetModel(tweet: json['tweet']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tweet'] = tweet;
    return data;
  }
}
