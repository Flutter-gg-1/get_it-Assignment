


class TweetDataModel{


  static int classId = 0;


  final String text;

   late final int id;
   

  TweetDataModel({required this.text}){

    classId +=1;

    id = classId;
  }
}