import 'package:flutter/material.dart';
import 'package:flutter_mapp/feature/home/views/login_page.dart';
import 'package:flutter_mapp/widget/hero.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroWidget(title: 'Welcome Screen'),
            FittedBox(
              child: Text(
                'Flutter Mapp',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 25.0,
                ),
              ),
            ),
            SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginMain();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 16, letterSpacing: 4),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16, letterSpacing: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
