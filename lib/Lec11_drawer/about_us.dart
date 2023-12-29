import 'package:flutter/material.dart';

class DrawerAboutUs extends StatelessWidget {
  const DrawerAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("A B O U T  U S" ,style: TextStyle(color: Colors.white),)),
      backgroundColor: Colors.green[300],
    );
  }
}