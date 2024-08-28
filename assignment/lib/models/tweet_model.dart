class TweetModel {
  late final String tweet;
  late final int id;

  TweetModel({required this.tweet, required this.id});

  TweetModel.fromJson(Map<String, dynamic> json) {
    tweet = json['tweet'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tweet'] = tweet;
    data['id'] = id;
    return data;
  }
}
