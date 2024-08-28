import 'package:flutter/material.dart';
import 'package:get_asg/data_handle/models/tweet_data_model.dart';
import 'package:icons_plus/icons_plus.dart';

class TweetWidget extends StatelessWidget {
  const TweetWidget({
    super.key, required this.tweetDataModel, required this.onPressed,
  });


 final  TweetDataModel tweetDataModel;

 final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child:  Column(
        children: [
          SizedBox(
              width: 250,
              child: Center(child: Text(tweetDataModel.text))),
    
              const SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                
                onPressed: onPressed, 
                
                icon: const Icon(
                FontAwesome.trash_can,
                color: Color(0xffFF0000),
              ),)
            ),
          ),

          const Divider()
        ],
      ),
    );
  }
}
