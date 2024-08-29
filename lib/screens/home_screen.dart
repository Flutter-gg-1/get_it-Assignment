import 'package:flutter/material.dart';
import 'package:twitter_app/core/widgets/buttons/custom_floating_action_button.dart';
import 'package:twitter_app/core/widgets/scaffold/custom_scaffold.dart';
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
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                title: Text('User $index'),
                subtitle: Text('Tweet $index'),
              ),
            ],
          );
        },
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const NewTweetScreen()));
        },
      ),
    ));
  }
}
