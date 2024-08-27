import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/helper/screen.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.message,
    this.onPressed,
  });
  final String message;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                width: context.getWidth(value: .9),
                child: Center(child: Text(message)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: onPressed,
                  icon: const FaIcon(color: Colors.red, FontAwesomeIcons.trash),
                ),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
