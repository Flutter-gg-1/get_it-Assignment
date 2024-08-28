import 'package:flutter/material.dart';
import 'package:get_assignment/data_layer/tweets_data.dart';
import 'package:get_assignment/helper/screen_size.dart';
import 'package:get_assignment/widget/custom_text_field.dart';
import 'package:get_assignment/widget/tweet_sizebox.dart';
import 'package:get_it/get_it.dart';

class AddTweets extends StatefulWidget {
  const AddTweets({super.key});

  @override
  State<AddTweets> createState() => _AddTweetsState();
}

class _AddTweetsState extends State<AddTweets> {

  //controller
  TextEditingController? controllerTweet = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_circle_up_outlined),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: context.getWidth(divide: 1),
          ),
          TextToWrite(),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: context.getWidth(divide: 1.5),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffE7ECF0))),
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ))),

                  // tweets(
                    
                  //   text:GetIt.I.get<TweetsData>()
                    
                  //   )
        ],
      ),
    );
  }
}
