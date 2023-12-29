import 'package:flutter/material.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({super.key});

  @override
  State<HomePage5> createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {

  var val = 0;

  void _update(){
    setState(() {     //set state basically update/recreate the page 
      val++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tapped " + val.toString() + " times", style: TextStyle(fontSize: 30),),

            GestureDetector(
              onTap: _update,
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.blue,
                child: Text("Button", style: TextStyle(fontSize: 30),)),
            ),
          ],
        ),
      ),

    );


  }
}