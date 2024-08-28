import 'dart:math';

class Tweet {
  int id = Random().nextInt(1000);
  String text;

  Tweet({required this.text});

  Tweet.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        text = json['text'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
      };
}
