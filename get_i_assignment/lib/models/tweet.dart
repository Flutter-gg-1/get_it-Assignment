class Tweet {
  final String content;
  final DateTime timestamp;

  Tweet({required this.content, required this.timestamp});


  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }


  factory Tweet.fromMap(Map<String, dynamic> map) {
    return Tweet(
      content: map['content'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}
