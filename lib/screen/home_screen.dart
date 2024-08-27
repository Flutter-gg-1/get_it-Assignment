import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/helper/screen.dart';
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
          onPressed: () {},
          child: const FaIcon(FontAwesomeIcons.plus),
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: FaIcon(color: Colors.blue, FontAwesomeIcons.twitter),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}