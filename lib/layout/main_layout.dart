import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/views_list.dart';

import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: kbarColor,
        indicatorColor: Colors.transparent,
        selectedIndex: currentIndex,
        onDestinationSelected: (selcetedIndex) {
          setState(() {
            currentIndex = selcetedIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
            selectedIcon: Icon(Icons.home, color: Color(0xFF00505F)),
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "Search",
            selectedIcon: Icon(Icons.search, color: Color(0xFF00505F)),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: "Profile",
            selectedIcon: Icon(Icons.person, color: Color(0xFF00505F)),
          ),
        ],
      ),
    );
  }
}
