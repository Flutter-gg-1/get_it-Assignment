import 'package:flutter/material.dart';

class CustomTweetData extends StatelessWidget {
  const CustomTweetData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercita.."),
                  IconButton(
                    padding: const EdgeInsets.only(left: 350),
                    onPressed: (){}, icon: Image.asset("assets/Vector-5.png")),
                  const Divider(),
                ],
              ),
            );
  }
}