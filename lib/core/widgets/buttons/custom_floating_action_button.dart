import 'package:flutter/material.dart';
import 'package:twitter_app/core/constants/colors.dart';
import 'package:twitter_app/core/widgets/icons/new_tweet_icon.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;
  const CustomFloatingActionButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const NewTweetIcon(),
      );
  }
}