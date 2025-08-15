import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/constant.dart';
import 'package:flutter_mapp/widget/general_container.dart';
import 'package:flutter_mapp/widget/hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> content = [
      {
        'company': 'Company ABC',
        'route': 'Cubao to BGC',
        'date': 'August 21, 2025',
        'time': '7:00 AM',
      },
      {
        'company': 'San Isidro Construction',
        'route': 'Cubao to BGC',
        'date': 'July 12, 2025',
        'time': '8:00 AM',
      },
      {
        'company': 'Malaya Incorporated',
        'route': 'Cubao to BGC',
        'date': 'July 12, 2025',
        'time': '8:00 AM',
      },
      {
        'company': 'Cavite State University',
        'route': 'Cavite to Bataan',
        'date': 'August 10, 2025',
        'time': '8:00 AM',
      },
      {
        'company': 'International Container Terminal Services Inc',
        'route': 'Manila to Bicol',
        'date': 'September 12, 2025',
        'time': '8:00 AM',
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            HeroWidget(title: 'Home Page'),
            ...List.generate(content.length, (index) {
              return GeneralContainer(
                company: content.elementAt(index)['company'],
                route: content.elementAt(index)['route'],
                date: content.elementAt(index)['date'],
                time: content.elementAt(index)['time'],
              );
            }),
          ],
        ),
      ),
    );
  }
}
