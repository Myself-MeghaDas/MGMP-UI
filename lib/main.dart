import 'package:flutter/material.dart';
import 'splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Landing UI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Make sure this doesn’t cause recursive builds
    );
  }
}
