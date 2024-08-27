class TweetModel {
  TweetModel({
    required this.id,
    required this.tweet,
  });
  late final int id;
  late final String tweet;
  
  TweetModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    tweet = json['tweet'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['tweet'] = tweet;
    return _data;
  }
}