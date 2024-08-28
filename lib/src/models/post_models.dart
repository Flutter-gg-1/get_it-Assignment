class PostModels {
  int? id = 1;
  static int lastId = 1;
  String? post;

  PostModels({this.post}) {
    id = lastId + 1;
  }

  PostModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    post = json['post'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['post'] = post;
    return data;
  }
}
