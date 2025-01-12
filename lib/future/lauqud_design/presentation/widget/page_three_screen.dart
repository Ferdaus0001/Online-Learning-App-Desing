import 'package:flutter/material.dart';
class PageThreeScreen extends StatefulWidget {
  const PageThreeScreen({super.key});

  @override
  State<PageThreeScreen> createState() => _PageThreeScreenState();
}

class _PageThreeScreenState extends State<PageThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/food3.jpg'),fit: BoxFit.cover),
        ),
      ),
    );
  }
}
