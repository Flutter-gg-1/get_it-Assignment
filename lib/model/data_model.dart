class DataModel{
  late final String tweet;
  late final int id;
  DataModel({required this.tweet, required this.id});

  DataModel.fromJson(Map<String, dynamic> json){
    tweet = json["tweet"];
    id = json["id"];
  }

  Map<String, dynamic> toJson(){
    final data = <String, dynamic>{};
    data["tweet"] = tweet;
    data["id"]=id;
    return data; 
  }
}