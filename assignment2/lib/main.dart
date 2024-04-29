import 'package:assignment2/screen_one.dart';
import 'package:assignment2/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenOne.routName,
      routes: {
        ScreenOne.routName: (context) => ScreenOne(),
        ScreenTwo.routName: (context) => ScreenTwo()
      },
    );
  }
}
