// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_kart/screens/menu/utilits/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A P P   K A R T',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Customise Your Profile',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/b4/c3/f9/b4c3f9cb6cd95fd2ace45f29be3c7d87.jpg'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.settings_outlined)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.33),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.apps),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'My Apps',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.replay_outlined),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Updates',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.bookmark_added),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Wish List',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              MenuCard(
                  icon1: Icons.card_giftcard_outlined,
                  icon2: Icons.card_membership,
                  icon3: Icons.notifications,
                  text1: 'Events',
                  text2: 'Vouchers and gift cards',
                  text3: 'Deals and Events'),

              MenuCard(
                  icon1: Icons.receipt_outlined,
                  icon2: Icons.subscriptions,
                  icon3: Icons.payment,
                  text1: 'Receipts',
                  text2: 'Subscriptions',
                  text3: 'Payment methods'),
              // Container(
              //   padding: EdgeInsets.only(left: 30),
              //   height: 150,
              //   width: double.infinity,
              //   color: Colors.grey[900],
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Icon(Icons.card_giftcard_outlined),
              //           SizedBox(
              //             width: 15,
              //           ),
              //           Text('Events')
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Icon(Icons.card_giftcard_outlined),
              //           SizedBox(
              //             width: 15,
              //           ),
              //           Text('Events')
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Icon(Icons.card_giftcard_outlined),
              //           SizedBox(
              //             width: 15,
              //           ),
              //           Text('Events')
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
