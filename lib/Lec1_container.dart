import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                )
              ]),
        ),
      ),
    );
  }
}
