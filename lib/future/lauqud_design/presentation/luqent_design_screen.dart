import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:my_project/future/lauqud_design/presentation/widget/page_one_screen.dart';
import 'package:my_project/future/lauqud_design/presentation/widget/page_three_screen.dart';
import 'package:my_project/future/lauqud_design/presentation/widget/page_two.dart';
class LuqentDesignScreen extends StatefulWidget {
  const LuqentDesignScreen({super.key});

  @override
  State<LuqentDesignScreen> createState() => _LuqentDesignScreenState();
}

class _LuqentDesignScreenState extends State<LuqentDesignScreen> {
  final LiquidController liquidController = LiquidController();
  final List<Widget > page  = [
    PageOneScreen(),
    PageTwoScreen(),
    PageThreeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:LiquidSwipe(pages: page),
    );
  }
}
