
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'future/bootom_navigabar/animated_bottom_navigation_bar.dart';
import 'future/bootom_navigabar/animated_bottom_navigation_bar2.dart';
import 'future/bootom_navigabar/bootom_navigation_bar.dart';
import 'future/bootom_navigabar/botom_navigation_bar_widget.dart';
import 'future/bootom_navigabar/curved_navigation_bar.dart';
import 'future/fastopen/fast_open_screen.dart';
import 'future/lauqud_design/presentation/luqent_design_screen.dart';
import 'future/linear_gradent/presenation/linear_gradent.dart';
import 'future/loding/presentation/loding_screen.dart';
import 'future/onboding/presentation/onboarding_screen.dart';
import 'future/introduction_screen/introduction_screen.dart';
import 'future/warp_widget/presentationj/wirp_screen.dart';





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
     home:  AnimatedBottomNavigationBar2(),
    );
  }
}


