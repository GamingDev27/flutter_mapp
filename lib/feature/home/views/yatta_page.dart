import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/notifiers.dart';
import 'package:flutter_mapp/feature/login/views/login.dart';

class YattaPage extends StatelessWidget {
  const YattaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
