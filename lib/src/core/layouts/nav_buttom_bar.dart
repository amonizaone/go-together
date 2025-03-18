import 'package:flutter/material.dart';

class NavButtomBar extends StatefulWidget {
  const NavButtomBar({super.key});

  @override
  State<NavButtomBar> createState() => _NavButtomBarState();
}

class _NavButtomBarState extends State<NavButtomBar> {
  int selectedIndex = 0;
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      // labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      selectedIndex: selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
      destinations:  [
        NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
        NavigationDestination(icon: Icon(Icons.commute), label: 'Commute'),
        NavigationDestination(
          selectedIcon: Icon(Icons.bookmark),
          icon: Icon(Icons.bookmark_border),
          label: 'Saved',
        ),
      ],
    );
  }
}
