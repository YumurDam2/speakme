import 'package:flutter/material.dart';
import 'package:speakme/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: HomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
