class TweetModel {
  TweetModel({
    required this.id,
    required this.title,


  });
  late final int id;
  late final String title;
 

  TweetModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
  
    return data;
  }
}
