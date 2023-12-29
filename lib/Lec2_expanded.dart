import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
          Container(
            width: 150,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),

    );
  }
}