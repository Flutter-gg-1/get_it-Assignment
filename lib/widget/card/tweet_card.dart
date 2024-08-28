import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:learn_get_it/helper/extinsion/size_configration.dart';

class TweetCard extends StatelessWidget {
  final String content;
  final int id;
  final Function()? onPressed;
  const TweetCard({
    super.key,
    required this.content,
    required this.id,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.getWidth() * 0.07),
          child: Column(
            children: [
              ListTile(
                leading: Brand(Brands.twitter_circled),
                title: Text(content),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
