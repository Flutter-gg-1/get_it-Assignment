import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/widget/button/add_tweat_button.dart';
import 'package:twitter/widget/message.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return 
    DefaultTabController(
      length: 1,
      child: Scaffold(
        floatingActionButton: AddTweatButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('BottomSheet'),
                        ElevatedButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child:
                    FaIcon(color: Color(0xff4C9EEB), FontAwesomeIcons.twitter),
              )
            ],
            indicatorColor: Colors.transparent,
          ),
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: const [
              Message(
                message: "Hello X",
              ),
              Message(
                message: "fdsfsdafdsafsdafdsafsdafsdafdsafdsfsdfsdafasdfdsfdsf",
              ),
              Message(
                message: "Heldsafdasfddslo X",
              ),
              Message(
                message: "Hellfdasfadsfasdo X",
              ),
              Message(
                message: "Hello X",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
