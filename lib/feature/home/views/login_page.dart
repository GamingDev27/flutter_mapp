import 'package:flutter/material.dart';
import 'package:flutter_mapp/feature/home/layout.dart';
import 'package:flutter_mapp/widget/hero.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({super.key});

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  TextEditingController email = TextEditingController(text: 'jdoe@test.com');
  TextEditingController password = TextEditingController(text: 'Abcd1234!');

  String validEmail = 'jdoe@test.com';
  String validPassword = 'Abcd1234!';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(title: 'Login'),
              SizedBox(height: 20),
              TextField(
                controller: email,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Email',
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 10),
              TextField(
                controller: password,
                obscureText: true,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Password',
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 15),
              FilledButton(
                onPressed: () {
                  loginCredentials();
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16, letterSpacing: 8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loginCredentials() {
    if (validEmail == email.text && validPassword == password.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Layout();
          },
        ),
      );
    }
  }
}
