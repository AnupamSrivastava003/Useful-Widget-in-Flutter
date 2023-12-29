import 'package:basic_stuff/Lec11_drawer/Home_page.dart';
import 'package:basic_stuff/Lec11_drawer/about_us.dart';
import 'package:flutter/material.dart';

class HomePage8 extends StatelessWidget {
  const HomePage8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("App Bar")),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: Text("A P P  B A R"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                    child: Text(
              "L O G O",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DrawerHomePage(),)
                );
              },
            ),
            ListTile(

              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.book),
              title: Text("About Us"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DrawerAboutUs(),)
                );
              },
            ),
          ],
        ),
      ),
      //endDrawer: Drawer(),
    );
  }
}
