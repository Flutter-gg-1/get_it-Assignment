import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/data_layer/tweets_data.dart';

class Tweet extends StatelessWidget {
  final String tweet;
  final Function()? onDelete;
  const Tweet({super.key, required this.tweet, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Text(tweet),
          trailing: IconButton(
            onPressed: onDelete,
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}


//GetIt.I.get<TweetsData>().tweets.remove(tweet);