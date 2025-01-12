
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_poject/future/auth/presentation/login_screen.dart';

import 'future/linear_gradent/presenation/linear_gradent.dart';
import 'future/loding/presentation/loding_screen.dart';
import 'future/onboding/presentation/onboarding_screen.dart';
import 'future/introduction_screen/introduction_screen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:  LodingScreen(),
    );
  }
}


