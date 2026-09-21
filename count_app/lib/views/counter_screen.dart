import 'dart:developer';

import 'package:count_app/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    log('from build method');
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Text("${controller.count}", style: TextStyle(fontSize: 30));
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.inc();
                },
                child: Text("+"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.dec();
                },
                child: Text("-"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.reset();
                },
                child: Text("reset"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
