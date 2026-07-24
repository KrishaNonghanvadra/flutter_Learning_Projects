import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  var colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Page'),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: colors[(0 + count)%4])),
          Expanded(child: Container(color: colors[(1 + count)%4])),
          Expanded(child: Container(color: colors[(2 + count)%4])),
          Expanded(child: Container(color: colors[(3 + count)%4])),
          Expanded(child: ElevatedButton(onPressed: () {
            count++;
            setState(() {});
            print("Button Clicked $count");
          }, child: Text('Change'),))
        ]
      ),
    );
  }
}

// create calculator to calculate gst and reverse gst

// state base 
// in state =
// out state =

// amt = 100
// gst% = 18
// total = amt + (amt * gst * 0.01)

// total = 236
// gst% = 18
// amt = total / (1+(0.01 * gst))