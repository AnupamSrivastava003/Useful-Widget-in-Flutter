import 'package:basic_stuff/Lac20_pagevView/page1.dart';
import 'package:basic_stuff/Lac20_pagevView/page2.dart';
import 'package:basic_stuff/Lac20_pagevView/page3.dart';
import 'package:flutter/material.dart';

class HomePage13 extends StatelessWidget {
  HomePage13({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        Page1(),
        Page2(),
        Page3(),
      ],
    );
  }
}