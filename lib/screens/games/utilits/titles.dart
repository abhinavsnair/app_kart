import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class titlesView extends StatelessWidget {
  final String text;
  const titlesView({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 70,
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Icon(Icons.chevron_right_sharp)
                  ],
                ),
              );
  }
}