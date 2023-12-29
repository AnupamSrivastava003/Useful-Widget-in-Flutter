
import 'package:basic_stuff/Lec10_appBar.dart';
import 'package:basic_stuff/Lec11_drawer/Lec11_drawer.dart';
import 'package:basic_stuff/Lec12_SliverAppBar.dart';
import 'package:basic_stuff/Lec13_tabBar.dart';
import 'package:basic_stuff/Lec14_animatedCont.dart';
import 'package:basic_stuff/Lec16_alertDialog&Timer.dart';
import 'package:basic_stuff/Lac20_pagevView/Lec20_pageView.dart';
import 'package:basic_stuff/Lec22_textField.dart';
import 'package:basic_stuff/Lec23_iconAnimation.dart';
import 'package:basic_stuff/Lec24_slider.dart';
import 'package:basic_stuff/Lec25_datePicker.dart';
import 'package:basic_stuff/Lec26_timePicker.dart';
import 'package:basic_stuff/Lec9_bottonNavBar.dart';
import 'package:basic_stuff/Lec8_gestureDector.dart';
import 'package:basic_stuff/Lec4_listView.dart';
import 'package:basic_stuff/scribble.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageRandom(),
    );
  }
}