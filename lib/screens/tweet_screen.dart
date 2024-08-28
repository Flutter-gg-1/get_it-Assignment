import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/data/all_tweets.dart';
import 'package:get_it_assignment/extensions/screen_size.dart';
import 'package:google_fonts/google_fonts.dart';

class TweetScreen extends StatefulWidget {
  
  const TweetScreen({super.key});

  @override
  State<TweetScreen> createState() => _TweetScreenState();
}

class _TweetScreenState extends State<TweetScreen> {
  
  TextEditingController tweetController = TextEditingController();

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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                    controller: tweetController,
                    minLines: 1,
                    maxLines: 5,
                    maxLength: 280,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      label: Text("What is happening?", style: GoogleFonts.actor(fontSize: 16),),
                      filled: true,
                      fillColor: const Color(0xffE7ECF0),
                      constraints: const BoxConstraints(minHeight: 35, maxHeight: 35*3, maxWidth: 280)
                    ),
                  ),
                  IconButton(onPressed: (){
                    GetIt.I.get<AllTweets>().addTweet(tweetContent: tweetController.text);
                    Navigator.pop(context,true);
                  }, icon: const Icon(Icons.send))
                ],
              ),
              const SizedBox(height: 32,),
              Container(
                width: context.getWidth(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 42),
                child: TextButton(
                  style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xffE7ECF0))),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.actor(fontSize: 19, color: Colors.black)
                  )
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}