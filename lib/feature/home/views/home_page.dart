import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/constant.dart';
import 'package:flutter_mapp/widget/hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Trip Today', style: KTextStyle.titleTextTeal),
                    Text('24', style: KTextStyle.descriptionTextTeal),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
