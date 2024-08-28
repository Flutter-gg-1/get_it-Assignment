import '../models/post_model.dart';

class PostData {
  List<PostModel> posts = [];

  //get all posts
  List<PostModel> getAllPosts() {
    return posts;
  }

  // add new post
  void addPost(post) {
    posts.add(post);
  }
}
