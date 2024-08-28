import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:twitter_app/models/tweet.dart';

class TweetList extends StatelessWidget {
  final List<Tweet> tweets;
  final Function(Tweet) onDelete;

  TweetList({required this.tweets, required this.onDelete});

  String formatDateTime(DateTime dateTime) {
    final DateFormat formatter =
        DateFormat('hh:mm a dd/MM/yyyy'); 
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        final tweet = tweets[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            contentPadding: EdgeInsets.all(16),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                'N',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(
              tweet.content,
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              formatDateTime(tweet.timestamp),
              style: TextStyle(color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () => onDelete(tweet),
            ),
          ),
        );
      },
    );
  }
}
