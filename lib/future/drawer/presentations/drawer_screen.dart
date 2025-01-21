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
      backgroundColor: Colors.white,
      appBar: AppBar(

      ),

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
                   ListTile(onTap: (){},

                   ),



                   IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
                   CustomScrollView(
                     slivers: [
                       SliverAppBar(
                         expandedHeight: 200.0,
                         flexibleSpace: FlexibleSpaceBar(
                           title: Text("Custom ScrollView"),
                           background: Image.network(
                             'https://via.placeholder.com/200',
                             fit: BoxFit.cover,
                           ),
                         ),
                       ),
                       SliverList(
                         delegate: SliverChildBuilderDelegate(
                               (BuildContext context, int index) {
                             return ListTile(
                               title: Text("Item #$index"),
                             );
                           },
                           childCount: 50, // Total items
                         ),
                       ),
                     ],
                   ),
                   Expanded(child: CircleAvatar()),
                   Container(),
                   AppKitView(viewType: String.fromCharCode(4)),


                 ],






      ),
    );
  }
}
