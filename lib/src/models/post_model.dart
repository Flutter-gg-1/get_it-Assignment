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

  // To JSON conversion method
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['post'] = post;
    return data;
  }
}
