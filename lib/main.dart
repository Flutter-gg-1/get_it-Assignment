import 'package:flutter/material.dart';
import 'package:twitter_app/screens/landing_screen.dart';

import 'helper/get_it.dart';

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
        debugShowCheckedModeBanner: false, home: LandingScreen());
  }
}
