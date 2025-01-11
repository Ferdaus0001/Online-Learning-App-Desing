import 'package:flutter/material.dart';
class MasScreen extends StatefulWidget {

  const MasScreen({super.key, required String title,});

  @override
  State<MasScreen> createState() => _MasScreenState();
}

class _MasScreenState extends State<MasScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Padding(padding: EdgeInsets.symmetric(vertical: 22,horizontal: 11),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://cdn.shopify.com/s/files/1/2045/8185/products/3584_1024x683.jpg?v=1550676288')),
          ),
        ),
      ),
    );
  }
}

