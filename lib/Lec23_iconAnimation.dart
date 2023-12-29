import 'package:flutter/material.dart';

class HomePage15 extends StatefulWidget {
  const HomePage15({super.key});

  @override
  State<HomePage15> createState() => _HomePage15State();
}

class _HomePage15State extends State<HomePage15>
    with SingleTickerProviderStateMixin {
  //create the animation ocntroller
  late AnimationController _animationController;

  //initilize the controller
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  bool videoPlaying = false;
  void _iconTapped(){
    if (videoPlaying == false){
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
              icon: AnimatedIcons.menu_home, progress: _animationController,
              size: 150,
              ),
        ),
      ),
    );
  }
}
