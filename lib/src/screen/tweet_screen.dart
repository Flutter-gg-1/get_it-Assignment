import 'package:flutter/material.dart';

class TweetScreen extends StatelessWidget {
  const TweetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Image.asset('assets/tweet_button.png'),
          shape: CircleBorder(),
          backgroundColor: Colors.blue,
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
          }),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Twitter _Logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            // Container     //     padding: const EdgeInsets.all(8.0), child: Text('YourAppTitle'))
          ],
        ),
      ),
      body: const SafeArea(
          child: Column(
        children: [Divider(thickness: 1)],
      )),
    );
  }
}
