import 'package:first_app_arjoosir/control/dropdownexample.dart';
import 'package:first_app_arjoosir/control/radiobutton.dart';
import 'package:first_app_arjoosir/control/scrollviewimage.dart';
import 'package:first_app_arjoosir/control/sliderexample.dart';
import 'package:first_app_arjoosir/control/splash_screen.dart';
import 'package:flutter/material.dart';

class TabExample extends StatefulWidget {
  const TabExample({super.key});

  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.stop), text: 'Stock'),
              Tab(icon: Icon(Icons.work), text: 'Work'),
              Tab(icon: Icon(Icons.message_sharp), text: 'Message'),
            ]
          ),
        ),
        body: const TabBarView(children: [
          Center(child: SplashScreen(),),
          Center(child: RadioExample(),),
          Center(child: ScrollImage(),),
          Center(child: DropDownExample()),
          Center(child: SliderExample()),
        ]),
      )
    );
  }
}