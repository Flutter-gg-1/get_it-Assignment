import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:twitter_app/data_layer/tweet_service.dart';
import 'screens/home_screen.dart';

void main() async {
  await GetStorage.init();
  setupLocator();
  runApp(MyApp());
}

void setupLocator() {
  GetIt.I.registerSingleton<TweetService>(TweetService());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
