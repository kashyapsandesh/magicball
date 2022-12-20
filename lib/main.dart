import 'package:flutter/material.dart';
import 'package:magicball/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magic Ball",
      home: HomePage(),
    );
  }
}
