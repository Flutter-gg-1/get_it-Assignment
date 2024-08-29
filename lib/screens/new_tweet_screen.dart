import 'package:flutter/material.dart';
import 'package:twitter_app/core/constants/colors.dart';
import 'package:twitter_app/core/widgets/buttons/custom_cancel_button.dart';
import 'package:twitter_app/core/widgets/scaffold/custom_scaffold.dart';

class NewTweetScreen extends StatefulWidget {
  const NewTweetScreen({super.key});

  @override
  State<NewTweetScreen> createState() => _NewTweetScreenState();
}

class _NewTweetScreenState extends State<NewTweetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'What\'s happening?',
                    border: InputBorder.none,
                    fillColor: AppColors.tertiary,
                    filled: true,
                  ),
                  maxLines: 1,
                  style: const TextStyle(fontSize: 16, color: AppColors.secondary),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCancelButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
