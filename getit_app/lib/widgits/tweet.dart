import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tweet extends StatelessWidget {
  const Tweet({super.key, required this.tweet, this.delete});
  
  final String tweet;
  final void Function()? delete; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 80, 0),
          child: Text(tweet),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: delete,
              icon: SvgPicture.asset('assets/delete.svg'), 
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Divider(height: 1),
      ],
    );
  }
}