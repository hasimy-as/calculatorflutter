import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color colorData = Colors.blue[10];

    return new MaterialApp(
      title: "Yurod Calculator",
      theme: new ThemeData(primarySwatch: colorData),
      home: new Homepage(),
    );
  }
}
