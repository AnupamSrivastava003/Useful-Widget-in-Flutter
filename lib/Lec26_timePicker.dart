import 'package:flutter/material.dart';

class HomePage18 extends StatefulWidget {
  const HomePage18({super.key});

  @override
  State<HomePage18> createState() => _HomePage18State();
}

class _HomePage18State extends State<HomePage18> {

  TimeOfDay _time = TimeOfDay.now();

  void _showTimePicker(){
    showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now()
      ).then((value) {
        setState(() {
          _time = value!;
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

            Text(_time.format(context).toString(), style: TextStyle(fontSize: 30),),

            MaterialButton(
              onPressed: _showTimePicker,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Choose Time" ,style: TextStyle(color: Colors.white, fontSize: 29),),
              ),
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}