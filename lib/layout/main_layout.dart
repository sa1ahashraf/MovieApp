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
        indicatorColor: Color.fromARGB(255, 161, 175, 179),
        selectedIndex: currentIndex,
        // animationDuration: Duration(milliseconds: 150),
        onDestinationSelected: (selcetedIndex) {
          setState(() {
            currentIndex = selcetedIndex;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
