import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:twitter_app/screens/home_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    goToHomeScreen();
  }

  goToHomeScreen() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    if (mounted) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Animate(
        onPlay: (controller) {
          controller.repeat();
        },
        effects: const [FadeEffect(duration: Duration(seconds: 1))],
        child: const Center(
          child: Icon(
            AntDesign.twitter_outline,
            color: Color(0xff4C9EEB),
            size: 80,
          ),
        ),
      ),
    );
  }
}
