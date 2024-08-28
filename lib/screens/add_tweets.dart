import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';
import 'package:get_it_assignment/data_layer/tweets_data.dart';
import 'package:get_it_assignment/widgets/buttons/custom_button.dart';
import 'package:get_it_assignment/widgets/card/custome_app_bar.dart';
import 'package:get_it_assignment/widgets/text_felid/custom_text_felid.dart';

class AddTweets extends StatefulWidget {
  const AddTweets({super.key});

  @override
  State<AddTweets> createState() => _AddTweetsState();
}

class _AddTweetsState extends State<AddTweets> {
  TextEditingController? Textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors().white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors().white,
        title: const CustomeAppBar(),
      ),
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomTextFelid(
            minLines: 1,
            textController: Textcontroller,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
              color: CustomColors().blue,
              title: "Save",
              onClick: () {
                if (Textcontroller!.text.isNotEmpty) {
                  GetIt.I
                      .get<TweetsData>()
                      .addTweet(tweet: Textcontroller!.text);
                  Navigator.pop(context, true);
                }
              }),
          const SizedBox(
            height: 8,
          ),
          CustomButton(
            color: CustomColors().grey,
            title: "Cancle",
            onClick: () {
              Navigator.pop(context, false);
            },
          )
        ]),
      )),
    );
  }
}
