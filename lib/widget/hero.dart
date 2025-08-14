import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'login-hero',
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20.0),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.blueGrey[100],
              padding: EdgeInsets.all(4),
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}
