import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/pages/auth_page.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AuthPage()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF9575CD),
              Color(0xFF4527A0),
            ],
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              Image.asset(
                alignment: Alignment.center,
                'assets/images/REM.png',
                height: 250.0,
                width: 250.0,
              ),
              // Text(
              //   "\nReminder?",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 18.0,
              //   ),
              // ),
            ],
          ),
          CircularProgressIndicator(),
        ]),
      ),
    );
  }
}
