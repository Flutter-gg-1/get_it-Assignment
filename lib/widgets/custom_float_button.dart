import 'package:flutter/material.dart';
import 'package:get_it_getstorage/helper/extension/navigation.dart';
import 'package:get_it_getstorage/screens/tweet_screen.dart';

class FloatButton extends StatefulWidget {
  const FloatButton({
    super.key,
  });

  @override
  State<FloatButton> createState() => _FloatButtonState();
}

class _FloatButtonState extends State<FloatButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, bottom: 50),
      child: FloatingActionButton(
        backgroundColor: const Color(0xff4C9EEB),
        tooltip: 'Increment',
        shape: const CircleBorder(),
        onPressed: () {
          context.push(
              screen: const TweetScreen(),
              onBack: (value) {
                if (value == true) {
                  setState(() {});
                }
              });
        },
        child: Image.asset("assets/Add text icon.png"),
      ),
    );
  }
}
