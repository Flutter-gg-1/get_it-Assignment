import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:twitter_app/helper/extensions/screen.dart';
import 'package:twitter_app/widgets/tweet_bottomsheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Icon(
            AntDesign.twitter_outline,
            color: Color(0xff4C9EEB),
            size: 30,
          ),
        ),
      ),
      body: const Column(
        children: [Divider()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff4C9EEB),
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              barrierColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const TweetBottomSheet();
              });
        },
        child: Image.asset(
          'assets/images/add.png',
          color: Colors.white,
        ),
      ),
    );
  }
}
