class TweetModel {
  late final String tweet;

  TweetModel({required this.tweet});

  TweetModel.fromJson(Map<String, dynamic> json) {
    tweet = json['tweet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tweet'] = tweet;
    return data;
  }
}
