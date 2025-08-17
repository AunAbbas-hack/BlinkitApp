import 'package:flutter/material.dart';
import 'package:untitled2/repository/widgets/Screens/Splash/cart.dart';
import 'package:untitled2/repository/widgets/Screens/Splash/category.dart';
import 'package:untitled2/repository/widgets/Screens/Splash/print.dart';

import '../home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<Widget> pages = [HomeScreen(), Cart(), Print(), Category()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/cart 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/print 1.png"),
            label: "Print",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/category 1.png"),
            label: "Category",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
