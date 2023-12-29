import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Row(
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
            ),
            Container(
              alignment: Alignment(0,-0.4),
              child: Icon(
                Icons.alarm,
                size: 200,
                color: Colors.white,
              ),
            ),

            Container(
              alignment: Alignment.center,
              child: Text("F1 Formula",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),

            ),
          ],
        ),
      ),
    );
  }
}
