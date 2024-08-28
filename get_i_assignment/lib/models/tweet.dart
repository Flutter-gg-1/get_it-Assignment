class Tweet {
  final String content;
  final DateTime timestamp;

  Tweet({required this.content, required this.timestamp});

  // Convert Tweet to Map (for storage)
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  // Convert Map to Tweet
  factory Tweet.fromMap(Map<String, dynamic> map) {
    return Tweet(
      content: map['content'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}
