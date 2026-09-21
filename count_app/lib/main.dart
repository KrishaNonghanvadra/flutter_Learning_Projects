import 'package:count_app/views/counter_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}