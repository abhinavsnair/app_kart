// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExclusiveView extends StatelessWidget {
  ExclusiveView({super.key});
  List image1 = [
    'https://scontent.fccj2-1.fna.fbcdn.net/v/t39.30808-6/275446889_4495639740538048_2311403992698732252_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PKR3JXyb6pkAX9S7Ezw&_nc_ht=scontent.fccj2-1.fna&oh=00_AT8v-d_DwITAY5803eOgzVR7itusrcv-Dt2pewiMdO-AMg&oe=634BD318',
    'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/869A40F85B4481DD545AD1387B52376E866F33C42FC8B80E271EC54CD035E1BD/scale?width=1200&aspectRatio=1.78&format=jpeg',
    'https://www.calltutors.com/blog/wp-content/uploads/2022/10/bleach-x.jpg'
  ];
  List image2 = [
    'https://i.pinimg.com/564x/12/d0/45/12d04587f205ba8accecb35de93f790b.jpg',
    'https://i.pinimg.com/736x/4e/c2/aa/4ec2aa9e29fe07f31598bc0659d2883e.jpg',
    'https://i.pinimg.com/564x/ac/e4/3f/ace43f69fb83720c72a8cbc2ccc88619.jpg',
  ];
  List name1 = ['Netflix', 'Hotstar', 'Crunchyroll'];
  List name2 = [
    'Netflix, Inc',
    'Novi Digital',
    'Crunchyroll EMEA'
  ];
  List name3 = [
    'The Adam Project',
    'Guardians Of The Galaxy',
    'Bleach: Thousand-Year Blood War Arc'
  ];
  List name4 = [
    '2022 - Sci-fi/Drama - 1h 46m',
    '2014 - Superhero - 2h 20m',
    '2022 -  Ep Full - 1h 34m'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
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
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(70),
          //   child: TabBar(
          //       indicatorWeight: 0.5,
          //       isScrollable: true,
          //       indicatorPadding: EdgeInsets.all(5),
          //       indicator: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colors.grey),
          //       tabs: [
          //         Tab(
          //           text: 'Features',
          //         ),
          //         Tab(
          //           text: 'Free',
          //         ),
          //         Tab(
          //           text: 'Racing',
          //         ),
          //         Tab(
          //           text: 'Action',
          //         ),
          //         Tab(
          //           text: 'Trending',
          //         ),
          //         Tab(
          //           text: 'Role Play',
          //         ),
          //         Tab(
          //           text: 'Adventure',
          //         ),
          //       ]),
          // ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
              children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    height: 280,
                    width: double.infinity,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(image1[index]),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(image2[index]),
                                        fit: BoxFit.cover)),
                              ),
                              title: Text(name1[index]),
                              subtitle: Text(name2[index]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name3[index],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    name4[index],
                    style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                  ),
                ],
              ),
            );
          })
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(
              //             color: Colors.grey.withOpacity(0.2),
              //             borderRadius: BorderRadius.circular(20)),
              //         height: 280,
              //         width: double.infinity,
              //         child: Container(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Container(
              //                 height: 180,
              //                 width: double.infinity,
              //                 decoration: BoxDecoration(
              //                     image: DecorationImage(
              //                         image: NetworkImage(
              //                             'https://scontent.fccj2-1.fna.fbcdn.net/v/t39.30808-6/275446889_4495639740538048_2311403992698732252_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PKR3JXyb6pkAX9S7Ezw&_nc_ht=scontent.fccj2-1.fna&oh=00_AT8v-d_DwITAY5803eOgzVR7itusrcv-Dt2pewiMdO-AMg&oe=634BD318'),
              //                         fit: BoxFit.cover)),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: ListTile(
              //                   leading: Container(
              //                     width: 50,
              //                     height: 50,
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(10),
              //                         image: DecorationImage(
              //                             image: NetworkImage(
              //                                 'https://i.pinimg.com/736x/12/d0/45/12d04587f205ba8accecb35de93f790b.jpg'),
              //                             fit: BoxFit.cover)),
              //                   ),
              //                   title: Text('NetFlix'),
              //                   subtitle: Text('Netflix, Inc'),
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Text(
              //         'The Adam Project',
              //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              //       ),
              //       SizedBox(
              //         height: 5,
              //       ),
              //       Text(
              //         '2022 ‧ Sci-fi/Drama ‧ 1h 46m',
              //         style: TextStyle(fontSize: 14, color: Colors.grey[400]),
              //       ),
              //     ],
              //   ),
              // )

              ),
        ),
      ),
    );
  }
}
