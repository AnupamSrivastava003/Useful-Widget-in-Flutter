import 'package:flutter/material.dart';

class DrawerHomePage extends StatelessWidget {
  const DrawerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("H O M E  P A G E" ,style: TextStyle(color: Colors.white),)),
      backgroundColor: Colors.purple[300],
    );
  }
}