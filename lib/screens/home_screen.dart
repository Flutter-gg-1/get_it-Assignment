import 'package:flutter/material.dart';
import '../widgets/custom_abb_bar.dart';
import 'add_tweet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(20, 70), child: CustomAbbBar()),
            body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 350, bottom:50),
              child: FloatingActionButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const AddTweet();
                }));
              },
              backgroundColor: const Color(0xff4C9EEB),
                         shape: const CircleBorder(side: BorderSide.none), child: Image.asset("assets/Add text icon.png"),),
            )
          ],
        )),
    );
  }
}