import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/activity_model.dart';
import 'package:flutter_mapp/widget/general_container.dart';
import 'package:flutter_mapp/widget/hero.dart';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getResource();
    super.initState();
  }

  Future getResource() async {
    final response = await http.get(
      Uri.parse('https://bored-api.appbrewery.com/random'),
    );
    await Future.delayed(const Duration(seconds: 2));
    // Await the http get response, then decode the json-formatted response.
    if (response.statusCode == 200) {
      return ActivityModel.fromJson(
        convert.jsonDecode(response.body) as Map<String, dynamic>,
      );
      //log(activity.activity);
    } else {}
  }

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
    return FutureBuilder(
      future: getResource(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
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
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
