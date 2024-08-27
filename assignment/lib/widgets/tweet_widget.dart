import 'package:flutter/material.dart';

class TweetWidget extends StatelessWidget {
  const TweetWidget({super.key, required this.tweet, this.iconPressed});
  final String tweet;
  final Function()? iconPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(94, 158, 158, 158)))),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 300,
            child: Text(maxLines: 5, overflow: TextOverflow.clip, tweet),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: iconPressed,
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ))),
        ],
      ),
    );
  }
}
