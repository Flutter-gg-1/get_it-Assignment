import 'package:flutter/material.dart';
import 'package:get_it_assignment/colors/custom_colors.dart';
import 'package:get_it_assignment/helper/extintions/screen.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      child: Column(
        children: [
          Image.asset("assets/twitterLogo.png"),
          const SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1,
            color: CustomColors().grey,
          )
        ],
      ),
    );
  }
}
