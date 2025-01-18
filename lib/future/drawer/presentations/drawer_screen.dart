import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text('HI'),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Expanded(child: Column(
            children: [
              Text('HI'),
              Text('HI'),
              Text('HI'),
              Text('HI'),
              Column(
                children: [
                  SizedBox(height: 50,),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
