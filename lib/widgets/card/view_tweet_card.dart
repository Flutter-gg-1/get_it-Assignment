import 'package:flutter/material.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';
import 'package:get_it_assignment/helper/extintions/screen.dart';
import 'package:get_it_assignment/widgets/text_felid/custom_text_felid.dart';

class ViewTweetCard extends StatelessWidget {
  const ViewTweetCard({super.key, required this.tweet, this.onPressed});
  final String tweet;
  final Function()? onPressed;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 70 , bottom: 20),
            child: Text(tweet, style: TextStyle(
              fontSize: 16,
              color: CustomColors().black
            ),),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(onPressed:onPressed, icon:Icon(Icons.delete_forever, color: CustomColors().red,))) ,
          Divider(
            thickness: 1,
            color: CustomColors().grey,
          )
        ],
      ),
    );
  }
}