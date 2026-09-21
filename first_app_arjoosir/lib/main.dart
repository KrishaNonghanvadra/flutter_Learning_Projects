import 'package:first_app_arjoosir/control/celenderexample.dart';
import 'package:first_app_arjoosir/control/chkbox.dart';
import 'package:first_app_arjoosir/control/dropdownexample.dart';
import 'package:first_app_arjoosir/control/gridview.dart';
import 'package:first_app_arjoosir/control/imagedisplay.dart';
import 'package:first_app_arjoosir/control/inputcontrol.dart';
import 'package:first_app_arjoosir/control/loginexample.dart';
import 'package:first_app_arjoosir/control/radiobutton.dart';
import 'package:first_app_arjoosir/control/scrollviewimage.dart';
import 'package:first_app_arjoosir/control/sliderexample.dart';
import 'package:first_app_arjoosir/control/splash_screen.dart';
import 'package:first_app_arjoosir/control/tabexample.dart';
import 'package:flutter/material.dart';
import 'package:first_app_arjoosir/stopwatch/stop_watch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreenPart(),
    );
  }
}
