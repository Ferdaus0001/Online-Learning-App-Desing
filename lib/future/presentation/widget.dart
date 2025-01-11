import 'package:flutter/material.dart';
class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key, required String title});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.symmetric(vertical: 22,horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                shape: StadiumBorder(),
                elevation: 111,
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.orange,
               backgroundBlendMode: BlendMode.plus,
                    borderRadius: BorderRadius.circular(531),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 11,
                        spreadRadius: 10,
                        offset: Offset(0,1),
                      )
                    ]
                    ),
                  child: Center(
                    child: GestureDetector(
                      child: Icon(Icons.nights_stay_outlined,color: Colors.black,size: 53,grade: 21,fill: 0.2, opticalSize: 32,),
                    ),
                  ),
                ),
              ),

           ),

    // Center(
            //   child: Card(
            //     shape: StadiumBorder(),
            //     elevation: 111,
            //     child: Container(
            //       height: 160,
            //       width: 160,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //
            //         borderRadius: BorderRadius.circular(531),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.white,
            //             blurRadius: 11,
            //             spreadRadius: 10,
            //             offset: Offset(0,1),
            //           )
            //         ]
            //         ),
            //       child: Center(
            //         child: GestureDetector(
            //           child: Icon(Icons.nights_stay_outlined,color: Colors.black,size: 53,),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
