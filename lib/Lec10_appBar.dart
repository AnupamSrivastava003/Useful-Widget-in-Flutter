import 'package:flutter/material.dart';

class HomePage7 extends StatelessWidget {
  const HomePage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("App Bar")),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: Text("A P P  B A R"),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
        
      ),
    );
  }
}