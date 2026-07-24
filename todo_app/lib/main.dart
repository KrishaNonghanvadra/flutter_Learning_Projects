import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_screen.dart';

void main(){
  runApp(ToDoApp());
}
class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}