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
        title: Text('Textbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(22.4),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Enter name',
                  hintText: 'Enter something here',
                  icon: Icon(Icons.people)),
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Enter Phone number',
                  hintText: 'Enter your phone no.',
                  icon: Icon(Icons.call)),
              keyboardType: TextInputType.phone,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Enter password',
                  hintText: 'Enter your password',
                  icon: Icon(Icons.password)),
              obscureText: true,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
