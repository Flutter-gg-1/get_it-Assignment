import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter/data_layer/global.dart';
import 'package:twitter/model/tweat_model.dart';
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
    TextEditingController addTweatController = TextEditingController();
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        floatingActionButton: AddTweatButton(
          onPressed: () {
            showAddTweet(
              context: context,
              controller: addTweatController,
              onSubmitted: (p0) {
                GetIt.I.get<Global>().tweats.add(
                      TweatModel(
                        message: addTweatController.text,
                        id: Random().nextInt(99),
                      ),
                    );
                addTweatController.clear();
                setState(() {});
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
            child: GetIt.I.get<Global>().tweats.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: GetIt.I.get<Global>().tweats.length,
                    itemBuilder: (context, index) {
                      return MessageBlock(
                        message: GetIt.I.get<Global>().tweats[index].message,
                      );
                    },
                  )
                : const SizedBox()),
      ),
    );
  }
}
