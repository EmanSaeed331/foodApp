import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  MyApp._instance(); // named private constructor
  static final MyApp instance = MyApp._instance();
  factory MyApp () => instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello'),
    );
  }
}