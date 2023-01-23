import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/new_reminder.dart';
import 'package:my_app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
