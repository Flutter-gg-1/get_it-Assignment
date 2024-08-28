class PostModule {
  int? id;
  String? post;

  PostModule({this.id, this.post});

  PostModule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    post = json['post'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['post'] = post;
    return data;
  }
}
