import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:learn_get_it/data_layer/tweet_data.dart';
import 'package:learn_get_it/src/post_screen.dart';
import 'package:learn_get_it/widget/button/floating_action.dart';
import 'package:learn_get_it/widget/card/tweet_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: FloatinButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PostScreen(),
                )).then(
              (value) {
                if (value == true) {
                  setState(() {});
                }
              },
            );
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Brand(Brands.twitter),
        centerTitle: true,
        shape: LinearBorder.bottom(
            side: const BorderSide(color: Colors.grey, width: 0.2)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: GetIt.I
                .get<TweetData>()
                .tweets
                .map(
                  (e) => TweetCard(
                    content: e.content,
                    id: e.id,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
