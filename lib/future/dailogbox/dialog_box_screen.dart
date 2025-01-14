import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class DialogBoxScreen extends StatefulWidget {
  const DialogBoxScreen({super.key});

  @override
  State<DialogBoxScreen> createState() => _DialogBoxScreenState();
}

class _DialogBoxScreenState extends State<DialogBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: CircleAvatar(child: IconButton(onPressed: (){
            Box();
          }, icon: Icon(Icons.face,color: Colors.red,size: 61,),),radius: 50,),
        ),

    );
  }

  void Box() {
    showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(
     title: Text('ferdaus'),
        backgroundColor: Colors.white,
        elevation: 4,
        content: Text('hi my name is ferdaus hossan what is your name & what is your job in this company '),
       actions: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             TextButton(onPressed: (){
               Get.back();
             },child: Text('OK'),),
             TextButton(onPressed: (){
               Get.back();
             },child: Text('NO'),),
           ],
         ),


       ],
      );
    });
  }
  }




