import 'package:flutter/material.dart';
class LinearGradentScreen extends StatefulWidget {
  const LinearGradentScreen({super.key});

  @override
  State<LinearGradentScreen> createState() => _LinearGradentScreenState();
}

class _LinearGradentScreenState extends State<LinearGradentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(

              // stops: [12.12,2.12,2.11],
              stops: [1,2,2],
              colors: [
            Colors.blue.shade700,
              Colors.black45,
                Colors.deepPurple.shade700
          ]),
        ),
      ),
    );
  }
}
