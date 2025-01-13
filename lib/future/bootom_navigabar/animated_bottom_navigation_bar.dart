import 'package:flutter/material.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_fore.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_one_screen.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_three_screen.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_two.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class AnimatedBottomNavigationBar extends StatefulWidget {
  const AnimatedBottomNavigationBar({super.key});

  @override
  State<AnimatedBottomNavigationBar> createState() =>
      _AnimatedBottomNavigationBarState();
}

class _AnimatedBottomNavigationBarState
    extends State<AnimatedBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _pageList  = [
    PageOneScreen(),
    PageTwoScreen(),
    PageThreeScreen(),
    PageForeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: WaterDropNavBar(
          barItems: [
            BarItem(filledIcon: Icons.favorite, outlinedIcon: Icons.favorite_border),
            BarItem(filledIcon: Icons.free_breakfast, outlinedIcon: Icons.free_breakfast_outlined),
            BarItem(filledIcon: Icons.shopping_cart, outlinedIcon: Icons.shopping_cart_checkout),
            BarItem(filledIcon: Icons.person, outlinedIcon: Icons.person_2_outlined),
          ],
          selectedIndex: _selectedIndex,
          onItemSelected: (indext){
            setState(() {
              _selectedIndex = indext;
            });
          },
      ),
    );
  }
}
