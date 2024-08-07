import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: HamroApp()),
    );

class HamroApp extends StatefulWidget {
  const HamroApp({super.key});

  @override
  State<HamroApp> createState() => _HamroAppState();
}

class _HamroAppState extends State<HamroApp> {
  bool _value = false;
  void _onChangedSwitch(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Switch(
              value: _value,
              onChanged: _onChangedSwitch,
            ),
            SwitchListTile(
              value: _value,
              onChanged: _onChangedSwitch,
              activeColor: Colors.green,
              subtitle: Text('Are you married?'),
              title: Text('Marital Status'),
            )
          ],
        ),
      ),
    );
  }
}
