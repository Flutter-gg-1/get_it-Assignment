import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/data_layer/tweets_data.dart';
import 'package:get_it_assignment/widgets/floating_button.dart';
import 'package:get_it_assignment/widgets/tweet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Twitter Logo.png"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: GetIt.I.get<TweetsData>().tweets.map((e) {
                    return Tweet(tweet: e);
                  }).toList(),
                ),

                const Divider(),
              ],
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: FloatingButton(
                floatinOnPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 600,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Write your tweet",
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    fillColor:
                                        Color.fromARGB(255, 229, 228, 228),
                                    filled: true,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 45,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff4C9EEB),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                    child: Text(
                                      "Tweet",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
