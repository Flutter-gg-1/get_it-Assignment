import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twter/twetts/twettsTask.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({super.key});

  @override
  _SecoundScreenState createState() => _SecoundScreenState();
}

class _SecoundScreenState extends State<SecoundScreen> {
  TextEditingController cont = TextEditingController();
  List<String> tweets = [];

  @override
  void initState() {
    super.initState();
    tweets = GetIt.I.get<TwetsTask>().getTwets();
  }

  void _addTweet(String tweet) {
    if (tweet.isNotEmpty) {
      setState(() {
        tweets.add(tweet);
      });
      GetIt.I.get<TwetsTask>().addTwets(tweet);
      cont.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Twitter Logo.png'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tweets.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tweets[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: cont,
                    decoration: InputDecoration(
                      hintText: 'Enter your tweet',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    _addTweet(cont.text);
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
