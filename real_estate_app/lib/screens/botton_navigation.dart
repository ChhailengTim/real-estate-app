import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          GestureDetector(
            onTap: () {
              debugPrint("On Tap");
            },
            child: const NavigationDestination(
              icon: Icon(Icons.search),
              label: "Home",
            ),
          ),
          const NavigationDestination(
            icon: Icon(Icons.feed),
            label: "Feed",
          ),
          const NavigationDestination(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          const NavigationDestination(
            icon: Icon(Icons.home),
            label: "My Home",
          ),
          const NavigationDestination(
            icon: Icon(Icons.person),
            label: "My Redfin",
          ),
        ],
      ),
    );
  }
}
