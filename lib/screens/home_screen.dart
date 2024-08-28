import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_assignment/extensions/screen_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(context.getWidth(), 59),
        child: AppBar(
          centerTitle: true,
          bottom: PreferredSize(preferredSize: Size(context.getWidth(), double.minPositive), child: const Divider(color: Colors.black26,)),
          title: const FaIcon(FontAwesomeIcons.twitter, color: Color(0xff4C9EEB),) ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff4c9eeb),
        shape: const OvalBorder(),
        onPressed: (){
          // context.push(target: target, saveData: )
        },
        child: Image.asset('assets/new_tweet.png', scale: 2,)
      ),
    );
  }
}