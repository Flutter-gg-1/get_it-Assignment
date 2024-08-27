import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: SvgPicture.asset(  'assets/Twitter Logo.svg'),
       bottom: const PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: Divider(height: 1),
      )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: SvgPicture.asset(  'assets/Add text icon.svg'),
        onPressed: (){}),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Tweet(),
              Tweet(),
              Tweet(),
            ]
          ),
        
        ),
      ),
    );
  }
}

class Tweet extends StatelessWidget {
  const Tweet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.fromLTRB(4, 0, 50, 0),
        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.."),
        ),
        SizedBox(height: 20,),
        Align(
          alignment: Alignment.bottomRight,
          child: Icon(Icons.delete_outline, color: Colors.red,)
        ),
        SizedBox(height: 20,),
        Divider(height: 1),
      ],
    );
  }
}