/*
*
* Post model class
*
* */
class PostModel {
  int? id = 1;
  String? post;
  static int _lastId = 0;

  // Constructor
  PostModel({this.post}) : id = ++_lastId;

  // From JSON conversion method
  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    post = json['post'];
  }

  // To JSON conversion method
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['post'] = post;
    return data;
  }
}
