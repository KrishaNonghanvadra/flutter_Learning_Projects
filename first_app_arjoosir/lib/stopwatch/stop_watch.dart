import 'dart:async';
import 'package:flutter/material.dart';

class MystopWatch extends StatefulWidget {
  const MystopWatch({super.key});

  @override
  State<MystopWatch> createState() => _MystopWatchState();
}

class _MystopWatchState extends State<MystopWatch> {
  int seconds = 0;
  late Timer timer;
  bool is_running = false;
  int milliseconds = 0;
  final laps = <int>[];

  // void lap(){
  // setstate((){
  //   laps.add(milliseconds)
  // })
  // }
  void _startTimer() {
    if (!is_running) {
      is_running = true;
    }
  }

  void _stopTimer() {
    if (is_running) {
      is_running = false;
    }
  }

  

  void _onTick(Timer timer) {
    setState(() {
      if(is_running){
        milliseconds+=100;
      }
      
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  

  String secondstotext(millis){
    final seconds = millis/1000;
    return '$seconds seconds';
  } 

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stop Watch Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              secondstotext(milliseconds),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: _startTimer, 
              child: Text("Start"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),),
              SizedBox(width: 20,),
              ElevatedButton(
                onPressed: _stopTimer,
                child: Text("End"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
