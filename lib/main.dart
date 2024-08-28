


import 'package:flutter/material.dart';
import 'package:get_asg/data_handle/git_it.dart';
import 'package:get_asg/page/home_page.dart';

void main(){

  setup();
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,



      home: HomePage(),
    );
  }
}