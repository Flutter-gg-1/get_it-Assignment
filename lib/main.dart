import 'package:flutter/material.dart';
import 'package:get_it_assignment/src/screens/home_screen.dart';
import 'package:get_it_assignment/src/services/setup.dart';

void main() async {
  // To ensure Flutter is initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();

  // call setup function to initialize services and dependencies
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
