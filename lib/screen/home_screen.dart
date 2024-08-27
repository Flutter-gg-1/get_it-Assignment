import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/widget/message.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff4C9EEB),
          enableFeedback: true,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const FaIcon(color: Colors.white, FontAwesomeIcons.plus),
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
