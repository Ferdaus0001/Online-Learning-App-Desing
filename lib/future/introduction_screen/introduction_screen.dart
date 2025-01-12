import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class Introduction_Screen extends StatefulWidget {
  const Introduction_Screen({super.key});

  @override
  State<Introduction_Screen> createState() => _Introduction_ScreenState();
}

class _Introduction_ScreenState extends State<Introduction_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  IntroductionScreen(
        done: Text('Done',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,

    );
  }
}
