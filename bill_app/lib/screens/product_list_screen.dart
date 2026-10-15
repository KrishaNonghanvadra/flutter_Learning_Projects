import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billing App"),
      ),
      body: ListView.builder(itemBuilder: (context,index) => ListTile()),
    );
  }
}