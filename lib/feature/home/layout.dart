import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/notifiers.dart';
import 'package:flutter_mapp/feature/home/views/home_page.dart';
import 'package:flutter_mapp/feature/home/views/menu_page.dart';
import 'package:flutter_mapp/feature/home/views/search_page.dart';
import 'package:flutter_mapp/feature/home/views/settings_page.dart';
import 'package:flutter_mapp/feature/home/views/yatta_page.dart';
import 'package:flutter_mapp/widget/NavBar.dart';

String? title1 = '1stOfMay';
List<Widget> pages = [
  HomePage(),
  YattaPage(),
  MenuPage(),
  SearchPage(),
  SettingsPage(),
];

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              title1!,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.indigo,
            actions: [
              IconButton(
                onPressed: () {
                  isDarkModeNotifier.value = !isDarkModeNotifier.value;
                },
                icon: Icon(Icons.dark_mode),
              ),
            ],
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
              onPressed: () {
                print('mama mo');
              },
              backgroundColor: Colors.greenAccent,
              child: Icon(Icons.qr_code),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,

          body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, child) {
              return pages.elementAt(selectedPage);
            },
          ),
          bottomNavigationBar: Navibar(),
        );
      },
    );
  }
}
