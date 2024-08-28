import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/widget/button/add_tweat_button.dart';
import 'package:twitter/widget/message_block.dart';
import 'package:twitter/widget/pop/show_add_tweat.dart';

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
        floatingActionButton: AddTweatButton(
          onPressed: () {
            showAddTweet(
              context: context,
              controller: TextEditingController(),
              onSubmitted: (p0) {},
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
              MessageBlock(
                message: "Hello X",
              ),
              MessageBlock(
                message: "fdsfsdafdsafsdafdsafsdafsdafdsafdsfsdfsdafasdfdsfdsf",
              ),
              MessageBlock(
                message: "Heldsafdasfddslo X",
              ),
              MessageBlock(
                message: "Hellfdasfadsfasdo X",
              ),
              MessageBlock(
                message: "Hello X",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
