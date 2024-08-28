import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:tweets_app/screens/add_tweet.dart';
import '../managers/data_mgr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dataMgr = GetIt.I.get<DataMgr>();

  void _navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (context) => AddTweet(),
    ))
        .then((value) {
      setState(() => ());
    });
  }

  void updateState() => setState(() => ());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(EvaIcons.twitter, size: 40, color: Colors.blue),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () => _navigate(context),
        child: const Icon(Bootstrap.feather, color: Colors.white, size: 32),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: dataMgr.allTweets
                      .map((tweet) => _TweetCardView(
                          id: tweet.id,
                          text: tweet.text,
                          setState: updateState))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TweetCardView extends StatelessWidget {
  _TweetCardView(
      {required this.id, required this.text, required this.setState});
  final int id;
  final String text;
  final dataMgr = GetIt.I.get<DataMgr>();
  final VoidCallback setState;

  void _removeTweet() async {
    await dataMgr.removeTweet(tweetId: id);
    setState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [Expanded(child: Text(text))],
        ),
        IconButton(
            onPressed: () => _removeTweet(),
            icon: const Icon(CupertinoIcons.trash_fill,
                color: Colors.red, size: 24)),
        const Divider(),
      ],
    );
  }
}
