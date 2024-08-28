import 'package:flutter/material.dart';
import 'package:get_it_assignment/widgets/custom_abb_bar.dart';

class AddTweet extends StatelessWidget {
  const AddTweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(20, 70), child: CustomAbbBar()),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30, left: 60, right: 60),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 218, 220, 222),
                  hintText: "What is happening?",
                  hintStyle: TextStyle(color: Color(0xff687684)),
                  contentPadding: EdgeInsets.only(left: 4),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                ),
              )
            ),
            SizedBox(
              height: 48,
              width: 398,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 218, 220, 222)),
                onPressed: (){}, child: const Text("Cancel", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),)))
          ],
        )),
    );
  }
}