import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: MyApp(),
      backgroundColor: Colors.blue.shade300,
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          }),
    );
  }
}
