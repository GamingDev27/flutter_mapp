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
String? title1 = '1stOfMay';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title1!,
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
      body: currentIndex == 0
          ? Center(child: Text('home'))
          : currentIndex == 1
          ? Center(child: Text('Yatta!'))
          : currentIndex == 2
          ? Center(child: Text('Menu'))
          : currentIndex == 3
          ? Center(child: Text('Search'))
          : Center(child: Text('Settings')),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.cached), label: "Yatta!"),
          NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: Colors.indigo,
        selectedIndex: currentIndex,
      ),
    );
  }
}

