// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_kart/screens/exclusives/exclusive_view.dart';
import 'package:app_kart/screens/games/games_view.dart';
import 'package:app_kart/screens/home/home_view.dart';
import 'package:app_kart/screens/menu/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _MyWidgetState();
}

List screens = [HomeView(), ExclusiveView(), GameView(), MenuView()];

class _MyWidgetState extends State<mainScreen> {
  int currentIndex = 0;
  onchanged(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onchanged,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.flash_on_sharp), label: 'Exclusive'),
            BottomNavigationBarItem(
                icon: Icon(Icons.games_outlined), label: 'Games'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ]),
    );
  }
}
