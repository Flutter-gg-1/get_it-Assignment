import 'package:flutter/material.dart';
import 'package:get_it_assignment/core/all_file.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final TextEditingController myControllerView = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MyTextField(myController: myControllerView),
              ),
              const SizedBox(height: 100),
              MaterialButton(
                color: const Color.fromARGB(255, 124, 183, 126),
                shape: const StadiumBorder(),
                onPressed: () {
                  print(myControllerView.text);
                  Scaffold.of(context).showBottomSheet((value) {
                    return Container(
                      width: double.infinity,
                      height: 200,
                      color: const Color.fromARGB(255, 124, 183, 126),
                      child: const Text(
                        'Added Tweet',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    );
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
