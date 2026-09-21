import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({super.key});

  @override
  State<GridExample> createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  final topics = [
    "Topic1",
    "Topic2",
    "Topic3",
    "Topic4",
    "Topic5",
    "Topic6",
    "Topic7",
    "Topic8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 6,
          mainAxisExtent: 6,
          children: [
            for (final topic in topics)
            Card(
              color: const Color.fromARGB(255, 60, 16, 223),
              child: Center(
                child: Text(topic),
              ),
            )
          ],
        ),
      ),
    );
  }
}