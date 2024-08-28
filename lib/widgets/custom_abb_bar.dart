import 'package:flutter/material.dart';

class CustomAbbBar extends StatelessWidget {
  const CustomAbbBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Image.asset("assets/Twitter Logo.png",),
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(preferredSize: Size(1, 20), child: Divider()),
      );
  }
}