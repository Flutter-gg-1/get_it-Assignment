class TweetModel {
  TweetModel({
    required this.id,
    required this.title,
  });
  late final int id;
  late final String title;

  TweetModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['id'] = id;
    return data;
  }
}
