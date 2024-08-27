import 'package:flutter/material.dart';
import 'package:twitter_app/helper/extensions/screen.dart';

class TweetBottomSheet extends StatelessWidget {
  const TweetBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 42),
        height: context.getHeight() / 3.6,
        width: context.getWidth(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              color: const Color(0xffE7ECF0),
              child:  TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'What is happening?',
                  hintStyle: TextStyle(fontSize: 16, color: Color(0xff687684)),
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
                onSubmitted: (value) {
                  // submit Tweet
                  Navigator.pop(context,true);
                },
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(context.getWidth(), 48),
                    backgroundColor: const Color(0xffE7ECF0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 19, letterSpacing: -0.5, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
