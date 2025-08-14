import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/constant.dart';
import 'package:flutter_mapp/widget/general_container.dart';
import 'package:flutter_mapp/widget/hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Home Page'),
            GeneralContainer(
              company: 'Company ABC',
              route: 'Cubao to BGC',
              date: 'August 21, 2025',
              time: '7:00 AM',
            ),
            GeneralContainer(
              company: 'San Isidro Construction',
              route: 'Cubao to BGC',
              date: 'July 12, 2025',
              time: '8:00 AM',
            ),
            GeneralContainer(
              company: 'Malaya Incorporated',
              route: 'Cubao to BGC',
              date: 'September 08, 2025',
              time: '10:00 AM',
            ),
            GeneralContainer(
              company: 'Cavite State University',
              route: 'Cavite to Bataan',
              date: 'December 11, 2025',
              time: '5:00 AM',
            ),
            GeneralContainer(
              company: 'San Isidro Construction',
              route: 'Cubao to BGC',
              date: 'July 12, 2025',
              time: '8:00 AM',
            ),
            GeneralContainer(
              company: 'International Container Terminal Services Inc',
              route: 'Cubao to BGC',
              date: 'August 21, 2025',
              time: '7:00 AM',
            ),
            GeneralContainer(
              company: 'Cavite State University',
              route: 'Cavite to Bataan',
              date: 'December 11, 2025',
              time: '5:00 AM',
            ),
            GeneralContainer(
              company: 'Malaya Incorporated',
              route: 'Cubao to BGC',
              date: 'September 08, 2025',
              time: '10:00 AM',
            ),
            GeneralContainer(
              company: 'Company ABC',
              route: 'Cubao to BGC',
              date: 'August 21, 2025',
              time: '7:00 AM',
            ),
            GeneralContainer(
              company: 'Cavite State University',
              route: 'Cavite to Bataan',
              date: 'December 11, 2025',
              time: '5:00 AM',
            ),
            GeneralContainer(
              company: 'Company ABC',
              route: 'Cubao to BGC',
              date: 'August 21, 2025',
              time: '7:00 AM',
            ),
            GeneralContainer(
              company: 'Company ABC',
              route: 'Cubao to BGC',
              date: 'August 21, 2025',
              time: '7:00 AM',
            ),
            GeneralContainer(
              company: 'Company ABC',
              route: 'Cubao to BGC',
              date: 'August 21, 2025',
              time: '7:00 AM',
            ),
          ],
        ),
      ),
    );
  }
}
