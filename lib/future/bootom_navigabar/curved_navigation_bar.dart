import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_fore.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_one_screen.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_three_screen.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_two.dart';

class CurvedNavigationBarScreen extends StatefulWidget {
  const CurvedNavigationBarScreen({super.key});

  @override
  State<CurvedNavigationBarScreen> createState() =>
      _CurvedNavigationBarScreenState();
}

class _CurvedNavigationBarScreenState
    extends State<CurvedNavigationBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PageOneScreen(),
    PageTwoScreen(),
    PageThreeScreen(),
    PageForeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.black12,
        color: Colors.grey.shade400,
        buttonBackgroundColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300), // Corrected duration
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.favorite, size: 30, color: Colors.white),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
