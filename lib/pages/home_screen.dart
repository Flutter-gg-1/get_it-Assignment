import 'package:assignment15/data_layer/tweet_data.dart';
import 'package:assignment15/pages/add_tweet_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var getIt = GetIt.I.get<TweetData>().tweets;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff4C9EEB),
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddTweetPage()))
              .then((onValue) {
            if (onValue != null) {
              setState(() {});
            }
          });
        },
        child: const FaIcon(FontAwesomeIcons.pencil),
      ),
      appBar: AppBar(
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1), child: Divider()),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          size: 30,
          color: Color(0xff4C9EEB),
        ),
      ),
      body: Column(
        children: getIt
            .map((e) => Stack(children: [
                  Positioned(
                    top: 100,
                    left: 420,
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.trashCan,
                        size: 20,
                        color: Color(0xffFF0000),
                      ),
                      onPressed: () {
                        GetIt.I.get<TweetData>().removeTweet(id: e.id!);
                        setState(() {});
                      },
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 34, vertical: 58),
                          child: Text(e.tweet!),
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                ]))
            .toList(),
      ),
    );
  }
}
