import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/src/data_layer/post_data.dart';
import 'package:get_it_assignment/src/models/post_model.dart';

// Stateful widget for the HomeScreen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/*
*
* HomeScreenState class for HomeScreen
*
* */
class _HomeScreenState extends State<HomeScreen> {
  /*
  *
  * initializing the instance
  *
  * */
  var posts = GetIt.I.get<PostData>().posts;

  // Controller to handle post input in the TextFormField
  final TextEditingController controllerPost = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      *
      * App Bar configuration
      *
      * */
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/twitter_logo.png',
          width: 27,
        ),
      ),
      /*
      *
      * Body configuration
      * SafeArea
      *
      * */
      body: SafeArea(
        /*
        *
        * Padding and Column layout
        *
        * */
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: posts.map(
                      (e) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: double.infinity,
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(e.post!)),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      onPressed: () {
                                        posts.remove(e);
                                        setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Color(0xffFF0000),
                                      ),
                                    )),
                                const Divider(),
                              ])),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      /*
      *
      * Floating Action Button configuration
      * This button will be used to show the bottom sheet when clicked
      * To add new twitter post
      *
      * */
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff4C9EEB),
        // to make button circular
        shape: const CircleBorder(),
        child: const Image(
          image: AssetImage('assets/add_post_icon.png'),
        ),
        onPressed: () {
          // show bottom sheet to add new post
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: controllerPost,
                      decoration: InputDecoration(
                        hintText: 'What is happening?',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          // Add new post if the input is not empty
                          if (controllerPost.text.isNotEmpty) {
                            PostModel newPost = PostModel(
                              post: controllerPost.text,
                            );

                            posts.add(newPost);
                            Navigator.pop(context, true); // Close the modal
                            setState(() {}); // Refresh the UI
                          }
                        },
                        child: const Text(
                          "Post",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    // Button to cancel the input
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                        ),
                        onPressed: () {
                          if (controllerPost.text.isNotEmpty) {
                            controllerPost.text = ""; // Clear the input
                          }
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
