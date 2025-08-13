import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'login-hero',
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20.0),
        child: Container(
          height: 200,
          width: double.infinity,
          color: Colors.blueGrey[100],
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Welcome', style: TextStyle(fontSize: 24))],
          ),
        ),
      ),
    );
  }
}
