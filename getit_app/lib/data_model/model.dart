class TweetModel {
  TweetModel({
    required this.id,
    required this.tweet,
  });
  late final int id;
  late final String tweet;

  TweetModel.fromJson(Map<String, dynamic> json) {
    tweet = json['tweet'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['tweet'] = tweet;
    return data;
  }
}
