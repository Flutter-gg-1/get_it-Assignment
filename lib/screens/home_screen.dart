import 'package:flutter/material.dart';
import 'package:get_it_assignment/extensions/screen_push.dart';
import 'package:get_it_assignment/extensions/screen_size.dart';
import 'package:get_it_assignment/screens/tweet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(context.getWidth(), 59),
        child: AppBar(
          centerTitle: true,
          bottom: PreferredSize(preferredSize: Size(context.getWidth(), double.minPositive), child: const Divider(color: Colors.black26,)),
          title: Image.asset('assets/twitter_logo.png', width: 27, height: 22,) ,
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 95),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff4c9eeb),
          shape: const OvalBorder(),
          onPressed: (){
            context.push(target: const TweetScreen(), saveData: (p0) {
              if(p0==true) {
                setState(() {});
              }
            });
          },
          child: Image.asset('assets/new_tweet.png', scale: 2,)
        ),
      ),
    );
  }
}