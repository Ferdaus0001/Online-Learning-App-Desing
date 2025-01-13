import 'package:flutter/material.dart';
class PageForeScreen extends StatefulWidget {
  const PageForeScreen({super.key});

  @override
  State<PageForeScreen> createState() => _PageForeScreenState();
}

class _PageForeScreenState extends State<PageForeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/food1.jpg'),fit: BoxFit.cover),
        ),
      ),
    );
  }
}
