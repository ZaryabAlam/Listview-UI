import 'package:flutter/material.dart';
import 'package:mylist1/home.dart';

void main() {
  runApp(MyApp());
}

//test
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
