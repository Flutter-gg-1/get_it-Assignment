import 'package:flutter/material.dart';
import 'package:getit_app/screens/homepage.dart';
import 'package:getit_app/services/setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage()
    );
  }
}
