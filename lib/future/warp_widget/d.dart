import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DScreen extends StatefulWidget {
  const DScreen({super.key});

  @override
  State<DScreen> createState() => _DScreenState();
}

class _DScreenState extends State<DScreen> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.grey,
      elevation: 9,
         icon: IconButton(onPressed: (){

         }, icon: Icon(Icons.deblur,color: Colors.blue,)) ,



    );
  }
}
