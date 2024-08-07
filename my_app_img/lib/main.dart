import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HamroApp(),
    ));

class HamroApp extends StatefulWidget {
  const HamroApp({super.key});

  @override
  State<HamroApp> createState() => _HamroAppState();
}

class _HamroAppState extends State<HamroApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Image extraction'),
            Image.asset(
                '/Users/manishgofficial/Desktop/My MacBook Pro/MACT_21BTRCM021.jpg')
          ],
        ),
      ),
    );
  }
}
