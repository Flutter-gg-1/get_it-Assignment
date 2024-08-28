import 'package:flutter/material.dart';
import 'package:get_assignment/screens/home_screen.dart';
import 'package:get_assignment/serveses/git_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen()
    );
  }
}
