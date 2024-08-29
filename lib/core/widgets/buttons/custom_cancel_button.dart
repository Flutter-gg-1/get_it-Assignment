import 'package:flutter/material.dart';
import 'package:twitter_app/core/constants/colors.dart';

class CustomCancelButton extends StatelessWidget {
  const CustomCancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.tertiary,
        foregroundColor: Colors.black,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
      ),
      child: const Text('Cancel'),
    );
  }
}