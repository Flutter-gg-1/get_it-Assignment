import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:learn_get_it/widget/button/floating_action.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 60),
        child:  FloatinButton(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Brand(Brands.twitter),
        centerTitle: true,
        shape: LinearBorder.bottom(
            side: const BorderSide(color: Colors.grey, width: 0.2)),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
