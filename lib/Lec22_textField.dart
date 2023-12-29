import 'package:flutter/material.dart';

class HomePage14 extends StatefulWidget {
  const HomePage14({super.key});

  @override
  State<HomePage14> createState() => _HomePage14State();
}

class _HomePage14State extends State<HomePage14> {
  //keeps a track on what the user is typing
  final _textController = TextEditingController();

  String userPost = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //top text
            Expanded(
              child: Container(
                child: Center(child: Text(userPost, style: TextStyle(fontSize: 25),)))),

            // middle element
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: "What's your favorite pornstar?",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: Icon(Icons.clear))),
            ),

            //bottom button
            MaterialButton(
              color: Colors.blue,
                child: Text(
                  "Post",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    userPost = _textController.text;
                  });
                })
          ],
        ),
      ),
    );
  }
}
