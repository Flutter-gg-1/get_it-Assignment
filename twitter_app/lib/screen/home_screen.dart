import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_app/data_layer/tweet_data.dart';

import '../model/tweet_model.dart';
import '../widgets/custom_tweet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller = TextEditingController();
  int id = 1000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/icons/twtr.png",
          height: 30,
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        verticalDirection: VerticalDirection.up,
        children: GetIt.I.get<TweetData>().allTweet.map((e) {
          return CustomTweet(
            txt: e.tweet,
            onPressed: () {
              GetIt.I.get<TweetData>().deleteTweet(e);
              setState(() {});
            },
          );
        }).toList(),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Add Tweet'),
                  content: TextField(
                      maxLines: 5,
                      minLines: 2,
                      maxLength: 140,
                      controller: _controller,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xffE7ECF0),
                          hintText: "What's happend?",
                          border: OutlineInputBorder())),
                  actions: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          GetIt.I.get<TweetData>().addTweet(
                                TweetModel(id: id++, tweet: _controller.text),
                              );
                          setState(() {});
                          _controller.clear();
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Tweet now",
                              style: TextStyle(color: Colors.blue),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/icons/twtr.png",
                              height: 20,
                            )
                          ],
                        ))
                  ],
                );
              },
            );
          }
        },
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Image.asset(
          "assets/icons/add.png",
          width: 20,
        ),
      ),
    );
  }
}
