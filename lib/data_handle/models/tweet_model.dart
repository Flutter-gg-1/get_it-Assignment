import 'dart:ffi';

import 'package:get_asg/data_handle/models/tweet_data_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetModel {

  final box = GetStorage();
  List<TweetDataModel> tweetList = [];


  TweetModel(){

    redyData();


  }


  void redyData(){

    if(box.hasData("tweet")){

      for(var val in box.read("tweet") ){

        tweetList.add(TweetDataModel.fromJson(val));


      }


    }


  }

  void delTweet(int id) {
    for (int i = 0; i < tweetList.length; i++) {
      if (tweetList[i].id == id) {
        tweetList.removeAt(i);
      }
    }

    saveAll();
  }




  void addTweet(String tex){


    tweetList.add(TweetDataModel(text: tex));

    saveAll();

  
  }

  void saveAll(){

    List<Map<String, dynamic>> temp = [];

    for(var val in tweetList){

      temp.add(val.toJson());
    }

    box.write("tweet", temp);

  }
}
