import 'package:flutter/material.dart';

class HomePage17 extends StatefulWidget {
  const HomePage17({super.key});

  @override
  State<HomePage17> createState() => _HomePage17State();
}

class _HomePage17State extends State<HomePage17> {

  //creating a datetimevariable

  DateTime _dateVariable = DateTime.now();


  void _showDatePicker(){
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(200), 
      lastDate: DateTime(2025)).then((value) {
        setState(() {
          _dateVariable = value!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(_dateVariable.toString(), style: TextStyle(fontSize: 30),),

            MaterialButton(
              onPressed: _showDatePicker,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Choose Date" ,style: TextStyle(color: Colors.white, fontSize: 29),),
              ),
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}