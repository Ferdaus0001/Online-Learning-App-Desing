import 'package:flutter/material.dart';
 import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
class LodingScreen extends StatefulWidget {
  const LodingScreen({super.key});

  @override
  State<LodingScreen> createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:LiquidCircularProgressIndicator(
        backgroundColor: Colors.white,
        borderColor: Colors.blue,
      ) ,
    );
  }
}
