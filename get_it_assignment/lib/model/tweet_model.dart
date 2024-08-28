class TweetModel {
  final int id;
  final String tweet;

  TweetModel({required this.tweet, required this.id});

  factory TweetModel.fromJson(Map<String, dynamic> json) {
    return TweetModel(tweet: json['tweet'], id: json['id']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tweet'] = tweet;
    data['id'] = id;
    return data;
  }
}
