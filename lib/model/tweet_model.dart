class TweetModel {
  TweetModel({
    required this.id,
    required this.tweet,
  });
  late final String id;
  late final String tweet;

  TweetModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tweet = json['tweet'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['tweet'] = tweet;
    return data;
  }
}
