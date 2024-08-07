import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HamroApp(),
    ));

class HamroApp extends StatefulWidget {
  const HamroApp({super.key});

  @override
  State<HamroApp> createState() => _HamroAppState();
}

class _HamroAppState extends State<HamroApp> {
  String name = 'Hello Manish';

  void _onClick() {
    setState(() {
      name = 'Button pressed';
    });
  }

  void _onClick1() {
    setState(() {
      name = 'Button pressed 2';
    });
  }

  void _onClick2() {
    setState(() {
      name = 'Button pressed 3';
    });
  }

  void _onClick3() {
    setState(() {
      name = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button of statefull'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(name),
            TextButton(
              onPressed: _onClick,
              child: Text('Text Button'),
            ),
            ElevatedButton(
              onPressed: _onClick1,
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: _onClick2,
              child: Text('Outlined button'),
            ),
            IconButton(
              onPressed: _onClick3,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
