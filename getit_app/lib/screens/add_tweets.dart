import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_app/data/tweet_data.dart';
import 'package:getit_app/data_model/model.dart';
import 'package:getit_app/widgits/cancel_button.dart';
import 'package:getit_app/widgits/tweet_textfeild.dart';

class AddTweets extends StatefulWidget {
  const AddTweets({super.key});

  @override
  State<AddTweets> createState() => _AddTweetsState();
}

class _AddTweetsState extends State<AddTweets> {
  TextEditingController? controllerweet = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(  'assets/Twitter Logo.svg'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Divider(height: 1),
      )
      ),
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 500, 50, 50),
          child: Column(
            children: [
              TweetTextfeild(controller: controllerweet,
              ),
              IconButton(onPressed: (){
                if ( controllerweet!.text.isNotEmpty) {
                  TweetModel newTweet = TweetModel(
                    id: Random().nextInt(999),
                    tweet: controllerweet!.text
                  );
                  GetIt.I.get<TweetData>().addTweet(tweet: newTweet);
                  print(TweetData().allTweets);
                  Navigator.pop(context,true);
                }
              }, icon: const Icon(Icons.add)),
              const SizedBox(height: 16,),
              const CancelButton()
            ],
          ),
        )
      ),
    );
  }
}

