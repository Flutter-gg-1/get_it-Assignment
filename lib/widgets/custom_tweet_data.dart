import 'package:flutter/material.dart';
import '../model/data_model.dart';

class CustomTweetData extends StatelessWidget {
  const CustomTweetData({super.key, required this.tweetData, this.onPressed});
  
  final void Function()? onPressed;
  final DataModel tweetData;

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              //padding:  const EdgeInsets.only(top: 10),
              child: Stack(
                children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       SizedBox(
                        height: 90,
                        width: 350,
                        child: Text(tweetData.tweet)),
                       const Divider(),
                    ],
              ),
              Positioned(
                left: 370,
                top: 100,
                child: IconButton(onPressed: onPressed, icon: Image.asset("assets/Vector-5.png")),
              ),
                  
],
    ),
                
              )
            ;
  }
}