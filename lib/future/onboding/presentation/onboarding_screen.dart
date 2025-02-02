import 'package:flutter/material.dart';

import 'models/data_models.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final  int indext = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView.builder(
        itemCount: data.length,
          itemBuilder: (BuildContext, i){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0,),
          child: Column(
            children: [
              Image.asset(data[i].image.toString(),height: 300,fit: BoxFit.cover,),
              SizedBox(height: 50,),
              Text(data[i].title.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(data[i].desception.toString()),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: List.generate(data.length, (indext)=> Container(
                    height: 10,
                      width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.orange,
                    ),
                  )),
                ),
              ),
              SizedBox(height: 21,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 11),
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange,
                ),
                child: Center(
                  child: Text('NEXT',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ],
          ),
        );
      }),
      backgroundColor: Colors.white,
    );
  }
}
