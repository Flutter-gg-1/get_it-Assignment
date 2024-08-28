import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/model/data_model.dart';
import 'package:get_it_assignment/widgets/custom_abb_bar.dart';

import '../data_layer/tweet_data.dart';

class AddTweet extends StatelessWidget {
  const AddTweet({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(20, 70), child: CustomAbbBar()),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 60, right: 60),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 218, 220, 222),
                  hintText: "What is happening?",
                  hintStyle: TextStyle(color: Color(0xff687684)),
                  contentPadding: EdgeInsets.only(left: 4),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                ),
              )
            ),
            SizedBox(
              height: 48,
              width: 398,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 218, 220, 222)),
                onPressed: (){
                  GetIt.I.get<TweetData>().addNewTweet(tweet: DataModel(tweet: controller.text, id: Random().nextInt(999)));
                  Navigator.pop(context, true);
                }, child: const Text("Add", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),))),
                const SizedBox(height: 10,),
            SizedBox(
              height: 48,
              width: 398,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 218, 220, 222)),
                onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("Cancel", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),)))
          ],
        )),
    );
  }
}