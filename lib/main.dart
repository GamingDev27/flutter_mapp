import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/notifiers.dart';
import 'package:flutter_mapp/feature/home/layout.dart';

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
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkModeNotifier.value
                  ? Brightness.dark
                  : Brightness.light,
            ),
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Layout();
  }
}
