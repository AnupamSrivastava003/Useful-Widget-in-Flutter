import 'package:flutter/material.dart';

class BottomDropUpScreen extends StatefulWidget {
  const BottomDropUpScreen({super.key});

  @override
  State<BottomDropUpScreen> createState() => _BottomDropUpScreenState();
}

class _BottomDropUpScreenState extends State<BottomDropUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop-Up Screen Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDropUpScreen(context);
          },
          child: Text('Show Drop-Up Screen'),
        ),
      ),
    );
  }


  void _showDropUpScreen(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, //  MediaQuery.of(context).size.height   for full screen
          color: Colors.white,
          child: Center(
            child: Text(
              'This is a Drop-Up Screen',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
      isScrollControlled: false,   // full screen kerna ho toh
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
  }
}