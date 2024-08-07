import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HamroApp(),
    ));

class HamroApp extends StatelessWidget {
  const HamroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ekraj Ghimire'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[Text('Hello', style: TextStyle(fontSize: 28.0))],
        ),
      ),
    );
  }
}
