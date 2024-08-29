


class Twets {
  Twets({
    required this.twtis,
  });
  late final String twtis;
  
  Twets.fromJson(Map<String, dynamic> json){
    twtis = json['twtis'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['twtis'] = twtis;
    return data;
  }
}