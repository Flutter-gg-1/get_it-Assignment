class DataModel{
  late final String tweet;
  DataModel({required this.tweet});

  DataModel.fromJson(Map<String, dynamic> json){
    tweet = json["tweet"];
  }

  Map<String, dynamic> toJson(){
    final data = <String, dynamic>{};
    data["tweet"] = tweet;
    return data; 
  }
}