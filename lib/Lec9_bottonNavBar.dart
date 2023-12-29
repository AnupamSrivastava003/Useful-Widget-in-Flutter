import 'package:flutter/material.dart';

class HomePage6 extends StatefulWidget {
  const HomePage6({super.key});

  @override
  State<HomePage6> createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {

  int val = 0;
  
  void _update(int index) {
    setState(() {   // page qill be recreated
      val = index;
    });
  }

  final List<Widget> _pages = [
    const Center(child: Text("Home", style: TextStyle(fontSize: 40),)),
    const Center(child: Text("Favorite", style: TextStyle(fontSize: 40),)),
    const Center(child: Text("Settings", style: TextStyle(fontSize: 40),)),
    const Center(child: Text("Profile", style: TextStyle(fontSize: 40),))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[val],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: val,
        onTap: _update,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: ""),
        ]) ,
    );
  }
} 