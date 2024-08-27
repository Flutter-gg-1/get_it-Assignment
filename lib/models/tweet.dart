class Tweet {
  final int id;
  final String content;

  Tweet({required this.id, required this.content});

  factory Tweet.fromJson(Map<String, dynamic> json) {
    return Tweet(id: json['id'], content: json['content']);
  }

  toJson() {
    return {'id': id, 'content': content};
  }
}
