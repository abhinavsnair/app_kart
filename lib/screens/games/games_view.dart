// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_kart/screens/games/utilits/carousel.dart';
import 'package:app_kart/screens/games/utilits/titles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameView extends StatelessWidget {
  GameView({super.key});
  List image = [
    'https://i.pinimg.com/564x/1c/c2/92/1cc29238d5877aeee4436f9af72eb394.jpg',
    'https://i.pinimg.com/564x/61/2a/a1/612aa10b5ca28cd4ecd355dc888f29ea.jpg',
    'https://i.pinimg.com/564x/69/81/7e/69817eac50792cffdb7973074e4b5bde.jpg',
    'https://i.pinimg.com/564x/b8/83/aa/b883aa1ddcfa4811a12f8e61f6b2ca9b.jpg',
    'https://i.pinimg.com/564x/97/fd/43/97fd439c4829bbfee8c3e1f53819ea73.jpg'
  ];
  List name = [
    'Temple Run',
    'Subway Surfs',
    'CandyCrush',
    'Hill Climb',
    'Fruit ninja'
  ];
  List image2 = [
    'https://play-lh.googleusercontent.com/fOGADJjmhN9n1_7RuVCIPTPS7bDufb-Zm81asifPeIwSxZgUrycjNzROJPiIbnwJ4jQ=s64-rw',
    'https://play-lh.googleusercontent.com/ib6CQITHabPbP4FZkawwLEgsM-r9Gr74YTzS_ogBVg2aqdPFzGgmjU-w1hmFwl2tv_s=s64-rw',
    'https://play-lh.googleusercontent.com/3uxM8azaGvT5VLoRwH66VU9vqF5BjzBvAZ1ZUlZ_ILykIXODAdcrc6o6901BqZ5hlJE=s64-rw',
    'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP=s64-rw',
    'https://play-lh.googleusercontent.com/cNE2roM5cV3F2VFABVGVIzjmfanWzMiTiOzIQCtKR9X1EFIHowqhav5wM2_ZmnZAoLY=s64-rw'
  ];
  List name2 = [
    'MotoGP Racing',
    'F1 Clash',
    'Vector',
    'MineCraft',
    'GTA:\nChinaTown'
  ];

  List image3 = [
    'https://play-lh.googleusercontent.com/IUIm7srK62Fczedh4Ag021wtLuzunUPLEItiqdv-pX07X-e-twtYi8878CA4VsRoYZKM=s256-rw',
    'https://play-lh.googleusercontent.com/PJo-zZiPokt4vUPri7-md-S-adydt9HPf9yfAcuKift7tYTC1cyrhpxmqFPQbuDRrDU=s256-rw',
    'https://play-lh.googleusercontent.com/stwUFdYIiKFCOU1uOCPQK5mRxr2fnZraDbM0ra32_-QxhudPDBGaehpzz_o9xLQl7A_v=s256-rw',
    'https://play-lh.googleusercontent.com/0TFi4iIzVN_gLo2cM6CqhwJ5kfh1wJSgsu6i-VmFzYVSZbau1ihgOLZImPAZVtm-clk=s256-rw',
    'https://play-lh.googleusercontent.com/590AflDt-hW2t85Cit_ODJPJdRiMMRn2cSF0vYNfsBpjm895x1zDy0npbD7IlDCvmNvI=s256-rw'
  ];
  List name3 = [
    'GT Racing 2:\nreal car game',
    'Asphalt 9:\nLegends',
    'GRID™\nAutosport',
   'Need for Speed™\nNo Limits',
    'Traffic Rider'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey[900]),
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
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: [
                  CarouselView(
                      image:
                          'https://rukminim1.flixcart.com/image/416/416/k6s82vk0/poster/y/x/2/medium-call-of-duty-game-poster-for-room-with-gloss-lamination-original-imafp5efnyhgwnqu.jpeg?q=70'),
                  CarouselView(
                      image:
                          'https://rukminim1.flixcart.com/image/416/416/klqx30w0/poster/h/l/q/medium-assassin-s-creed-game-wall-poster-for-room-with-gloss-original-imagyt8zhvtzsnu7.jpeg?q=70'),
                  CarouselView(
                      image:
                          'https://rukminim1.flixcart.com/image/416/416/kmthz0w0/wallpaper/k/l/k/60-45-game-of-thrones-wallpaper-for-room-18x24-inch-b54-hk-original-imaf7yf6nmvpujus.jpeg?q=70'),
                ],
                options: CarouselOptions(
                  height: 220,
                  viewportFraction: 0.99,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(
                    milliseconds: 1000,
                  ),
                ),
              ),
            ),
            titlesView(text: 'Latest Game Updates'),
            SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(image.length, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(image[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: [
                  CarouselView(
                      image:
                          'https://play-lh.googleusercontent.com/6XjXvZWC0o6DXhxbox48o5SEdR1BfqhGOjapaW0pgWCe5vYH5drNSKupRzukw34YicM=w416-h235-rw'),
                  CarouselView(
                      image:
                          'https://play-lh.googleusercontent.com/9ss7exJXKvigGfaRF_arYyDg_pTUhKJX9Uj_WVxzI6tV1yubSvxZN1tcFUMJ31QrVMO0=w416-h235-rw'),
                  CarouselView(
                      image:
                          'https://play-lh.googleusercontent.com/cHuWt0L3GlMhbNgq4Sc_FQ6mknke19XRpRdKekZdtVahVRWioaNSzGWwSQvGIpQNig=w416-h235-rw'),
                ],
                options: CarouselOptions(
                  height: 220,
                  viewportFraction: 0.99,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(
                    milliseconds: 1000,
                  ),
                ),
              ),
            ),
            titlesView(text: 'The Best game for You'),
            SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(image2.length, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(image2[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(name2[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  );
                }),
              ),
            ),
            titlesView(text: 'The Best game for You'),
            SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(image3.length, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(image3[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(name3[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
