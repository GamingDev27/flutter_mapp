import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/notifiers.dart';

class Navibar extends StatelessWidget {
  const Navibar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.cached), label: "Yatta!"),
            NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
            NavigationDestination(icon: Icon(Icons.search), label: "Search"),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          backgroundColor: Colors.indigo,
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
