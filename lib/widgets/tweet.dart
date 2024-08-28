import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  final String tweet;
  const Tweet({super.key, required this.tweet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Text(tweet), // Assuming `e` has a `content` property
          trailing: IconButton(
            onPressed: () {
              
            },
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
