import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  final String text;
  const HomePage4({super.key, required this.text});

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  final List _list = ["1", "2", "3", "4", "5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 4,
            // it is very imp here
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        _list[index],
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                      height: 300,
                      color: Colors.indigo,
                    ),
                  ),
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
