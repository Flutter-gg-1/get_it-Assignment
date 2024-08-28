import 'package:flutter/material.dart';
import 'package:get_it_assignment/screen/home_screen.dart';
import 'package:get_it_assignment/servers/dependency.dart';

void main() async {
  setupData();
  WidgetsFlutterBinding.ensureInitialized();
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
