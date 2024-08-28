import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/src/data_layer/post_data.dart';
import 'package:get_it_assignment/src/models/post_models.dart';

class TweetScreen extends StatefulWidget {
  const TweetScreen({super.key});

  @override
  State<TweetScreen> createState() => _TweetScreenState();
}

class _TweetScreenState extends State<TweetScreen> {
  // Retrieve the list of posts using GetIt for dependency injection
  var post = GetIt.I.get<PostData>().allPost;

  int minline = 1; // Minimum lines for the TextField
  String? valueSelect; // To store selected value if needed

  // Controller to handle input in the TextField
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display Twitter logo in the center of the AppBar
            Image.asset(
              'assets/Twitter _Logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            // You can add additional title text or widgets here
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(thickness: 1), // Adds a divider below the AppBar
            Expanded(
              child: ListView.separated(
                itemCount: post.length, // Number of items in the list
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(post[index].post!), // Display the post content
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Remove the post when delete icon is pressed
                        GetIt.I<PostData>().removePost(id: index);
                        setState(() {}); // Refresh the UI
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.grey, // Set the color of the divider
                    thickness: 1.0, // Set the thickness of the divider
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {
          // Show modal bottom sheet when FAB is pressed
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 250, // Set the height of the modal bottom sheet
                child: Center(
                  child: Column(
                    children: [
                      // Input field for entering a new post
                      SizedBox(
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: TextField(
                            maxLines: 3, // Maximum lines for the input field
                            minLines:
                                minline, // Minimum lines for the input field
                            controller: controller,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffE7ECF0),
                              border: InputBorder.none,
                              hintText:
                                  'what is happening ?', // Placeholder text
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Button to send the new post
                          SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                // Add new post if the input is not empty
                                if (controller.text.isNotEmpty) {
                                  PostModels newpost = PostModels(
                                    post: controller.text,
                                  );
                                  GetIt.I
                                      .get<PostData>()
                                      .addNewpost(newPost: newpost);
                                  Navigator.pop(
                                      context, true); // Close the modal
                                  setState(() {}); // Refresh the UI
                                }
                              },
                              child: const Text(
                                "Send",
                                style: TextStyle(color: Colors.black),
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
                                if (controller.text.isNotEmpty) {
                                  controller.text = ""; // Clear the input
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
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Image.asset('assets/tweet_button.png'), // Custom FAB icon
      ),
    );
  }
}
