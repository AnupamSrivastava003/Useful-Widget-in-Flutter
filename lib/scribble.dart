import 'dart:ui';

import 'package:flutter/material.dart';

class HomePageRandom extends StatelessWidget {
  const HomePageRandom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            //setting the background
            Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: ClipOval(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 20.0, sigmaY: 20.0), // Increase blur
                    child: Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'More Blurry',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
