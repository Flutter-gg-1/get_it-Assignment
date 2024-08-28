import 'package:flutter/material.dart';
import 'package:get_it_assignment/core/all_file.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 250),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: MyTextField(),
              ),
              const SizedBox(height: 100),
              MaterialButton(
                color: const Color.fromARGB(255, 124, 183, 126),
                shape: const StadiumBorder(),
                onPressed: () {
                  Scaffold.of(context).showBottomSheet((value) {
                    return const RecordView();
                  });
                },
                child: const Text('Tweet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
