import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_app/core/constants/colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  // final Function()? onPressed;
  final Widget? floatingActionButton;

  const CustomScaffold(
      {super.key,
      required this.body, 
      // this.onPressed, 
      this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const FaIcon(FontAwesomeIcons.twitter, color: AppColors.primary),
        centerTitle: true,
        shape: const Border(bottom: BorderSide(color: AppColors.secondary, width: 0.2)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
