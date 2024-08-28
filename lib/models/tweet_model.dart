class TweetModel {
  int? id;
  String? tweet;

  TweetModel({this.id, this.tweet});

  deleteModel(List<TweetModel> tweet){
    tweet.removeAt(id!);


  }

  TweetModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tweet = json['tweet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['tweet'] = tweet;
    return data;
  }
}
