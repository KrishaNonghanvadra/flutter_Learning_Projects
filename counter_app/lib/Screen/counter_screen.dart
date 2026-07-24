import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    log("Bulid method called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
        leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Column(
        children: [
          Text("Count : $count", style: TextStyle(fontWeight: FontWeight.bold, fontSize:25 ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: count<10?(){count++;setState(() {});}:null, child: Icon(Icons.add)),
              ElevatedButton(onPressed: count==0?null:(){count--; setState(() {});}, child: Icon(Icons.remove)),
              ElevatedButton(onPressed: count==0?null:(){count=0; setState(() {});}, child: Icon(Icons.refresh)),
            ],
          ),
        ],
      ),
    );
  }
}