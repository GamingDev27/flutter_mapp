import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/notifiers.dart';
import 'package:flutter_mapp/feature/home/views/home_page.dart';
import 'package:flutter_mapp/feature/home/views/menu_page.dart';
import 'package:flutter_mapp/feature/home/views/search_page.dart';
import 'package:flutter_mapp/feature/home/views/settings_page.dart';
import 'package:flutter_mapp/feature/home/views/yatta_page.dart';
import 'package:flutter_mapp/widget/NavBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? title1 = '1stOfMay';
List<Widget> pages = [
  HomePage(),
  YattaPage(),
  MenuPage(),
  SearchPage(),
  SettingPage(title: 'Settings'),
];

class Layout extends StatelessWidget {
  const Layout({super.key});

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
        actions: [
          IconButton(
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool('is_darkmode', isDarkModeNotifier.value);
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkModeNotifier.value ? Icons.light_mode : Icons.dark_mode,
                );
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: 'Settings');
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: Navibar(),
    );
  }
}
