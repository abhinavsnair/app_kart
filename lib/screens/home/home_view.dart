// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_kart/screens/home/screens/action.dart';
import 'package:app_kart/screens/home/screens/adventure.dart';
import 'package:app_kart/screens/home/screens/features.dart';
import 'package:app_kart/screens/home/screens/free.dart';
import 'package:app_kart/screens/home/screens/trending.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[900]),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 15),
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: Icon(
                      Icons.search,
                    )),
              ),
            ),
            actions: [
              Icon(Icons.language),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.card_giftcard_outlined),
              SizedBox(
                width: 10,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: TabBar(
                  indicatorWeight: 0.5,
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.all(5),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  tabs: [
                    Tab(
                      text: 'Features',
                    ),
                    Tab(
                      text: 'Free',
                    ),
                    Tab(
                      text: 'Action',
                    ),
                    Tab(
                      text: 'Trending',
                    ),
                    Tab(
                      text: 'Adventure',
                    ),
                  ]),
            ),
          ),
          body: TabBarView(children: [
            FeatureTab(),
            FreeTab(),
            ActionTab(),
            TrendingTab(),
            AdventureTab()
          ])),
    );
  }
}
