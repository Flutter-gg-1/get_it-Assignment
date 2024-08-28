class TweetModel {
  late final int id;
  late final String content;

  TweetModel({required this.id, required this.content});

  TweetModel.fromJson(Map<String, dynamic> json,) {
    id = json['id'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['content'] = content;
    return data;
  }
}