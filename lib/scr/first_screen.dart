import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twter/setup/secound_screen.dart';
import 'package:twter/twetts/twettsTask.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> tweets = [];

  @override
  void initState() {
    super.initState();
    tweets = GetIt.I.get<TwetsTask>().getTwets();
  }

  void _deleteTweet(int index) {
    setState(() {
      if (tweets.isNotEmpty) {
        tweets.removeAt(index);
        GetIt.I.get<TwetsTask>().deleteTweet(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Twitter Logo.png'),
      ),
      body: tweets.isNotEmpty
          ? ListView.builder(
              itemCount: tweets.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tweets[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _deleteTweet(index);
                    },
                  ),
                );
              },
            )
          : Center(child: Text('No tweets available.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecoundScreen()),
          );

          setState(() {
            tweets = GetIt.I.get<TwetsTask>().getTwets();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
