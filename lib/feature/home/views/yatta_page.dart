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
          Container(
            width:
                50 * 2 +
                24, // Radius * 2 to cover the full circle size, +6 for border width
            height: 50 * 2 + 24, // Same for height
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlueAccent, // Border color
            ),
            child: CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/images/staks_profile.jpg'),
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
