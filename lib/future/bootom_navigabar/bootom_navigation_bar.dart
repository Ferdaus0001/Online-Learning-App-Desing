import 'package:flutter/material.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_fore.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_one_screen.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_three_screen.dart';
import 'package:my_poject/future/lauqud_design/presentation/widget/page_two.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PageOneScreen(),
    PageTwoScreen(),
    PageThreeScreen(),
    PageForeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: Card(
        color: Colors.white,
        elevation: 11,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() {
            _currentIndex = index;
          }),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey.shade400,
          selectedColorOpacity: 0.2,
          itemPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),

          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.red,
              unselectedColor: Colors.red.shade200,
              icon: const Icon(Icons.home_filled),
              activeIcon: Icon(Icons.hive_sharp),

              title: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

            ),
            SalomonBottomBarItem(
              selectedColor: Colors.red,
              unselectedColor: Colors.red.shade200,
              activeIcon: Icon(Icons.hive_sharp),

              icon: const Icon(Icons.person),
              title: const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.red,
              unselectedColor: Colors.red.shade200,
              activeIcon: Icon(Icons.hive_sharp),
              icon: const Icon(Icons.shopping_cart_checkout),
              title: const Text(
                'Cart',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.red,
              unselectedColor: Colors.red.shade200,
              activeIcon: Icon(Icons.hive_sharp),
              icon: const Icon(Icons.favorite),
              title: const Text(
                'Favorites',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
