import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarouselView extends StatelessWidget {
  final String image;
  const CarouselView({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
          image: DecorationImage(
              image: NetworkImage(
                  image),
              fit: BoxFit.cover)),
    );
  }
}
