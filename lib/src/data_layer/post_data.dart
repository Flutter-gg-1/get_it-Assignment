import 'package:get_it_assignment/src/models/post_models.dart';
import 'package:get_storage/get_storage.dart';

class PostData {
  List<PostModels> allPost = [];
  // List<String> categories = [];
  final box = GetStorage();

  PostData() {
    loadTask();
  }

  removePost({
    required int id,
  }) {
    allPost.removeAt(id);
  }

  addNewpost({required PostModels newPost}) {
    allPost.add(newPost);
    saveTasks();
  }

  //?--------- save all tasks
  saveTasks() async {
    List<Map<String, dynamic>> postAsMap = [];
    for (var element in allPost) {
      postAsMap.add(element.toJson());
    }
    await box.write("post", postAsMap);
  }

  loadTask() {
    if (box.hasData('post')) {
      List<Map<String, dynamic>> tasksSaved =
          List.from(box.read('post')).cast<Map<String, dynamic>>();
      for (var element in tasksSaved) {
        allPost.add(PostModels.fromJson(element));
      }
    }
  }

  //
  clearStorage() {
    box.remove('post');
  }
}
