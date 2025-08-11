import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = 'Mamma mo';
int timer = 0;
double number = 0.0;
List navigation = ['Home', 'Profile', 'Settings', 'About'];
Map mapNav = {'name': "John Doe"};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Map',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(children: [ListTile(title: Text('logout'))]),
          ),
        ),
        floatingActionButton: SizedBox(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent,
            child: Icon(Icons.qr_code),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: NavigationBar(
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
            print(value);
          },
          backgroundColor: Colors.indigo,
        ),
      ),
    );
  }
}
