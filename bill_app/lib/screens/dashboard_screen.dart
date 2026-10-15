import 'dart:developer';

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing App'),
      ),
      body: Center(
        child: Text("Dashboard"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          log(value.toString());
          if (value==1){
          Navigator.of(context).pushNamed('/product');
          }else if(value==2){
          Navigator.of(context).pushNamed('/settings');
          } 
        } ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.gif_box), label: 'Product'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ]
      ),
    );
  }
}