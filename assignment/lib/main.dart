import 'package:assignment/screens/home_screen.dart';
import 'package:assignment/services/setup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
  setup();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
