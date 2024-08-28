class TweatModel {
  late final String message;
  late final int id;

  TweatModel({required this.message, required this.id});

    TweatModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['id'] = id;
    return data;
  }
}

