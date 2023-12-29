import 'package:flutter/material.dart';

class HomePage9 extends StatelessWidget {
  const HomePage9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.indigo,
            title: Text("SILVER APP BAR"),
            leading: Icon(Icons.menu),
            floating: true,    //scroll up kerne pe immediately aayega 
            pinned: true,     //app bar will be pinned always 
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: Text("SILVER APP BAR"),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[300],
                ),
                height: 400,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[300],
                ),
                height: 400,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[300],
                ),
                height: 400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
