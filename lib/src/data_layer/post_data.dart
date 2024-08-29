import 'package:get_storage/get_storage.dart';
import '../models/post_model.dart';

/*
*
* PostData class to manage posts
*
* */
class PostData {
  List<PostModel> posts = [];

  // Storage initialization
  final box = GetStorage();

  // add new post
  void addPost(post) {
    posts.add(post);
  }

  // Get all posts from storage
  PostData() {
    loadPosts();
  }

  // Remove post by id
  removePost({
    required int id,
  }) {
    posts.removeAt(id);
  }

  // Add new post snd save to storage
  addNewPost({required PostModel newPost}) {
    posts.add(newPost);
    savePosts();
  }

  // Save posts to storage
  savePosts() async {
    List<Map<String, dynamic>> postAsMap = [];
    for (var element in posts) {
      postAsMap.add(element.toJson());
    }
    await box.write("posts", postAsMap);
  }

  // Load posts from storage
  loadPosts() {
    if (box.hasData('posts')) {
      List<Map<String, dynamic>> tasksSaved =
          List.from(box.read('posts')).cast<Map<String, dynamic>>();
      for (var element in tasksSaved) {
        posts.add(PostModel.fromJson(element));
      }
    }
  }
}
