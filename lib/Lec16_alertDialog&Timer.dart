import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage12 extends StatefulWidget {
  const HomePage12({super.key});

  @override
  State<HomePage12> createState() => _HomePage12State();
}

class _HomePage12State extends State<HomePage12> {

  void _showDialog(){
    showDialog(
      context: context, 
      builder:(context) {
        return AlertDialog(    // also CupertinoAlertDialog 
          content: Text("You have successfully downlaoded this file."),
          actions: [
            MaterialButton(
              onPressed: (){},
              child: Text("Okay"),
              ),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Cancel"),
              )
          ],
        );
    },);
  }

  var bgText = "AJJFBODZCIZCJISEJIZCIZCJISEJIZXICKXZXBJZCIZCJISEJIZXICKXIPFZXJCNXZCIZCJISEJIZXICKXCKZNLZVKLZVXNVKL";

  int timeleft = 5;

  void _timer(){
    Timer.periodic(Duration(seconds: 1), (timer) { 
      setState(() {
        if (timeleft > 0){
          setState(() {
            timeleft--;
          });
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey[900],
          ),

          Container(
            child: Text(bgText, style: TextStyle(
              color: Colors.grey[500],
              fontSize: 60, 
              fontWeight: FontWeight.bold,
              letterSpacing: 20,
            ),),
          ),


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(timeleft == 0 ? "Done" : timeleft.toString(), 
              style: TextStyle(
                fontSize: 140, 
                color: Colors.white, 
                fontWeight: FontWeight.bold),),

              MaterialButton(
                onPressed: _timer,
                child: Container(
                  color: Colors.white,
                  child: Text("Press", style: TextStyle(fontSize: 40),),
                  padding: EdgeInsets.all(25),
                ),
              ),


              Center(
              child: GestureDetector(
                onTap: _showDialog,
                child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Text("Press Button", style: TextStyle(fontSize: 20, color: Colors.white),),
                padding: EdgeInsets.all(25),),
              )),
            ],
          ),
        ],
      ),
    );
  }
}