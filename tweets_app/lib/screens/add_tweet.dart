import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:tweets_app/managers/data_mgr.dart';
import '../model/tweet.dart';

class AddTweet extends StatelessWidget {
  AddTweet({super.key});
  final controller = TextEditingController();
  final dataMgr = GetIt.I.get<DataMgr>();

  void _addTweet(BuildContext context, Tweet tweet) async {
    if (tweet.text.isEmpty) {
      _showAlert();
    } else {
      await dataMgr.addNewTweet(tweet);
      _popView(context);
    }
  }

  void _showAlert() => ();

  void _popView(BuildContext context) => Navigator.pop(context, true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => _popView(context),
            icon: Icon(CupertinoIcons.chevron_left)),
        title: const Icon(EvaIcons.twitter, size: 40, color: Colors.blue),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'What is happening?',
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.black45),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey.shade300),
                      onPressed: () =>
                          _addTweet(context, Tweet(text: controller.text)),
                      child: const Text('Add Tweet',
                          style: TextStyle(fontSize: 16)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
