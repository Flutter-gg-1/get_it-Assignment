


class TweetDataModel{


  static int classId = 0;


  final String text;

   late final int id;
   

  TweetDataModel({required this.text}){

    classId +=1;

    id = classId;
  }



  factory TweetDataModel.fromJson(Map<String, dynamic> json){


    return TweetDataModel(text: json["text"] );


  }


  Map<String,dynamic> toJson(){



    return{

      "text" : text

    };
  }



}