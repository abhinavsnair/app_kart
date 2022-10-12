// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuCard extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final String text1;
  final String text2;
  final String text3;
  const MenuCard({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.only(left: 30),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.32),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon1,
                  size: 27,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text1,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon2, size: 27),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text2,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon3, size: 27),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text3,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
