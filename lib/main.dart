import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twitter/screen/bottom_container.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MainApp(), // Wrap your app
      ),
    );

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomContainer());
  }
}