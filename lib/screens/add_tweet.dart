import 'package:flutter/material.dart';
import 'package:get_it_assignment/widgets/custom_abb_bar.dart';

class AddTweet extends StatelessWidget {
  const AddTweet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size(20, 70), child: CustomAbbBar()),
    );
  }
}