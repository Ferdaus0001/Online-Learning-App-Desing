
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotationDemo extends StatefulWidget {
  const RotationDemo({Key? key}) : super(key: key);

  @override
  State<RotationDemo> createState() => _RotationDemoState();
}

class _RotationDemoState extends State<RotationDemo> {
  double _turns = 0.0;

  void _rotate() {
    setState(() {
      _turns += 0.25; // 90 ডিগ্রি প্রতি ক্লিকে
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Animations',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue),),
          AnimatedRotation(
            turns: _turns,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Icon(
              Icons.rotate_right,
              size: 100,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _rotate,
            child: const Text("Rotate"),
          ),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(radius: 22,),
          AboutDialog()
        ],
      ),
    );
  }
}
