import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      *
      * App Bar configuration
      *
      * */
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
      *
      * */
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    /*
                    *
                    * Line
                    *
                    * */
                    title: Text(''),
                    // leading: Checkbox(
                    //   value: tasks[index].isComplete,
                    //   activeColor: Colors.purple,
                    //   onChanged: (value) {
                    //     tasks[index].isComplete = value!;
                    //     setState(() {}); // Refresh the UI to reflect the change
                    //   },
                    // ),
                  );
                },
              ),
            ),
          ],
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
        onPressed: () {},
      ),
    );
  }
}
