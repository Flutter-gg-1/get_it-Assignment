import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_app/core/widgets/buttons/custom_floating_action_button.dart';
import 'package:twitter_app/core/widgets/scaffold/custom_scaffold.dart';
import 'package:twitter_app/data_layer/data_layer.dart';
import 'package:twitter_app/screens/new_tweet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScaffold(
      body: ListView.builder(
        itemCount: GetIt.I<TweetData>().tweets.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(GetIt.I<TweetData>().tweets[index].tweet),
                trailing: IconButton(onPressed: (){
                  GetIt.I<TweetData>().deleteTweet(GetIt.I<TweetData>().tweets[index]);
                  setState((){});
                }, icon: const Icon(Icons.delete, color: Colors.red)),
              ),
            ],
          );
        },
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const NewTweetScreen())).then((value) => setState((){}));
        },
      ),
    ));
  }
}
