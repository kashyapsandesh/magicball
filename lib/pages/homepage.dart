import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var updateNumber = 1;
  void valueChange() {
    setState(() {
      updateNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Magic Ball',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                valueChange();
              },
              child: Image(
                image: AssetImage('images/ball$updateNumber.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
