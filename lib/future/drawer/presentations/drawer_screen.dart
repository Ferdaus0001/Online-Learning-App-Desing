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
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(22),
                 border: Border.all(color: Colors.red),
                     ),
                   ),
                   CircleAvatar(radius: 50,),
                   Text('Hi Ferdaus '),
                   Container(decoration: BoxDecoration(color: Colors.red),),
                   ListTile(),


                 ],






      ),
    );
  }
}
