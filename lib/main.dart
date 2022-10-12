import 'package:app_kart/mainscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
     brightness: Brightness.dark
      ),
     debugShowCheckedModeBanner: false,
      home: mainScreen(),
    );
  }
}

