import 'package:flutter/material.dart';

class HomePage16 extends StatefulWidget {
  const HomePage16({super.key});

  @override
  State<HomePage16> createState() => _HomePage16State();
}

class _HomePage16State extends State<HomePage16> {

  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0,
            max: 10,
            divisions: 10,
            label: _value.toString(),
            activeColor: Colors.indigo,
            inactiveColor: Colors.indigo[2100],
            value: _value, 
            onChanged: (value) {
            setState(() {
              _value = value;
            });
          })
        ],
      ),
    );
  }
}