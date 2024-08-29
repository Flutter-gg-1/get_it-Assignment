import 'package:flutter/material.dart';
import 'package:get_it_getstorage/helper/extension/screen.dart';

class TweetContent extends StatelessWidget {
  const TweetContent(
      {super.key, required this.tweetContent, required this.onClicked});

  final String tweetContent;
  final Function()? onClicked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: context.getWidth(divide: 1.2),
                  child: Center(
                      child: Text(
                    tweetContent,
                    style: const TextStyle(color: Colors.black),
                  ))),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onClicked,
                icon: const Icon(
                  Icons.delete_forever_outlined,
                  size: 40,
                  color: Color(0xffFF0000),
                ),
              ),
              const SizedBox(
                width: 15,
              )
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
