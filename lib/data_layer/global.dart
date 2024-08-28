import 'package:twitter/model/tweat_model.dart';
import 'package:get_storage/get_storage.dart';

class Global {
  List<TweatModel> tweats = [];

  Global() {
    loadTweats();
  }
  final box = GetStorage();

  void addTweats(TweatModel tweat) {
    tweats.add(tweat);
    saveTweat();
  }

  void saveTweat() {
    List<Map<String, dynamic>> map = [];
    for (TweatModel tweat in tweats) {
      map.add(tweat.toJson());
    }
    box.write("tweats", map);
  }

  void loadTweats() {
    if (box.hasData('tweats')) {
      List<Map<String, dynamic>> data =
          List.from(box.read('tweats')).cast<Map<String, dynamic>>();
      for (var element in data) {
        tweats.add(TweatModel.fromJson(element));
      }
    }
  }

  void delete(TweatModel tweat) {
    tweats.remove(tweat);
    List<Map<String, dynamic>> map = [];
    for (TweatModel tweat in tweats) {
      map.add(tweat.toJson());
    }
    box.write("tweats", map);
  }
}
