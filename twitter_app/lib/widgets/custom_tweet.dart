import 'package:flutter/material.dart';
import 'package:twitter_app/helper/extention.dart';

class CustomTweet extends StatelessWidget {
  final String txt;
  final Function()? onPressed;

  const CustomTweet({super.key, required this.txt, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 0.5, color: Colors.grey),
      )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(txt),
            Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
