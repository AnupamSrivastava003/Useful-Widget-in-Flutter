import 'package:flutter/material.dart';

class HomePage10 extends StatelessWidget {
  const HomePage10({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("T A B B A R"),
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              )
            ]),

            Expanded(
              child: TabBarView(children: [
                Container(child: Center(child: Text("1st Tab")),color: Colors.blue[200],),
                Container(child: Center(child: Text("2st Tab")),color: Colors.green[200],),
                Container(child: Center(child: Text("3st Tab")),color: Colors.red[200],)
              ]),
            )
            
          ],
        ),
      ),
    );
  }
}
