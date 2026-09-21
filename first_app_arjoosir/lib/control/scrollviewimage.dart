import 'package:flutter/material.dart';
import 'package:first_app_arjoosir/resource/imgresource.dart';

class ScrollImage extends StatefulWidget {
  const ScrollImage({super.key});

  @override
  State<ScrollImage> createState() => _ScrollImageState();
}

class _ScrollImageState extends State<ScrollImage> {
  Widget ScrollDips(){
    return SizedBox(
      height: 600,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imgList.length,
        itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Image(
            image: imgList[index],
            fit: BoxFit.cover,
            height: 200,
            width: 80,
          ),
        );
      },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ScrollDips(),
          ],
        ),
      ),
    );
  }
}