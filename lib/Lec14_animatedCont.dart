import 'package:flutter/material.dart';

class HomePage11 extends StatefulWidget {
  const HomePage11({super.key});

  @override
  State<HomePage11> createState() => _HomePage11State();
}

class _HomePage11State extends State<HomePage11> {

  double boxHeight = 100;
  double boxWidth = 100;
  Color boxColor = Colors.indigo;
  double boxX = -1;
  double boxY = -1;

  void _expandBox(){
    setState(() {
      if (boxHeight == 300){
        boxHeight = 100;
        boxWidth = 100;
        boxColor = Colors.indigo;
        boxX = -1;
        boxY = -1;
      } else {
        boxHeight = 300;
        boxWidth = 300;
        boxColor = Colors.pink;
        boxX = 1;
        boxY = 1;
      }
      
    });
  }

  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox,
      child: Scaffold(
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOutCubicEmphasized,
            alignment: Alignment(boxX, boxY),
            height: boxHeight,
            width: boxWidth,
            color: boxColor,
          ),
        ),
      ),
    );
  }
}