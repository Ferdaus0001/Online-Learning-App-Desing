import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AnimatedBottomNavigationBar2 extends StatefulWidget {
  const AnimatedBottomNavigationBar2({super.key});

  @override
  State<AnimatedBottomNavigationBar2> createState() =>
      _AnimatedBottomNavigationBar2State();
}

class _AnimatedBottomNavigationBar2State
    extends State<AnimatedBottomNavigationBar2> {
  int _bottomNavIndex = 0;

  final List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];

  final Color activeNavigationBarColor = Colors.blue;
  final Color notActiveNavigationBarColor = Colors.grey;

  final List<Widget> pages = [

    Center(child: Text("Home Screen")),
    Center(child: Text("Favorite Screen")),
    Center(child: Text("Cart Screen")),
    Center(child: Text("Profile Screen")),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_bottomNavIndex], // Display the selected page
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for Floating Action Button
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color =
          isActive ? activeNavigationBarColor : notActiveNavigationBarColor;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              if (isActive)
                const SizedBox(height: 4),
              if (isActive)
                Text(
                  ["Home", "Favorite", "Cart", "Profile"][index],
                  style: TextStyle(color: color),
                ),
            ],
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
