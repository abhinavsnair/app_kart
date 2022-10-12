// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_kart/screens/games/utilits/titles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../games/utilits/carousel.dart';

class FeatureTab extends StatelessWidget {
   FeatureTab({super.key});
  List image = [
    'https://play-lh.googleusercontent.com/JMNWaZel_qg6qj8T0bjX5OeLvXdka4hxzT_rsSVe5qQWHg798GmJcZetlQYm9-VlTsk=s64-rw',
    'https://play-lh.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=w240-h480-rw',
    'https://play-lh.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo=w240-h480-rw',
    'https://play-lh.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=w240-h480-rw',
    'https://play-lh.googleusercontent.com/eN0IexSzxpUDMfFtm-OyM-nNs44Y74Q3k51bxAMhTvrTnuA4OGnTi_fodN4cl-XxDQc=w240-h480-rw'
  ];
  List name = [
    'Clash of Clans',
    'WhatsApp',
    'Snapchat',
    'Facebook',
    'Spotify'
  ];
  List image2 = [
    'https://i.pinimg.com/736x/0c/cc/0a/0ccc0ad61d6a1b18f7d53e636ba0979c.jpg',
    'https://play-lh.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q=w240-h480-rw',
    'https://i.pinimg.com/564x/86/32/e7/8632e7e79c86690f52458fc8a9cc4e05.jpg',
    'https://play-lh.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo=w240-h480-rw',
    'https://i.pinimg.com/736x/3b/99/53/3b99534ff4d2b7309800796ba51abf0d.jpg'
  ];
  List name2 = [
    'Netflix',
    'Telegram',
    'Twitter',
    'Snapchat',
    'Disney+'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            height: 50,
            width: double.infinity,
            child: titlesView(text: 'Popular Apps For Your Device'),
            
          ),
          SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(image.length, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
            titlesView(text: 'Recommended for You'),
            SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(image.length, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: [
                  CarouselView(
                      image:
                          'https://cdn.dribbble.com/users/112164/screenshots/7009884/netflix_concept_final_4x.png'),
                  CarouselView(
                      image:
                          'https://cdn.dribbble.com/users/112164/screenshots/7009884/attachments/1479227/02-netflix-concept-season8.png?compress=1&resize=400x300&vertical=top'),
                  CarouselView(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc6l55t5t-h1osuXeYqH3ejM_Few7PQu0R5q0fr5neWAZA3iZgd-HJRjqIiFNUPkMYIAc&usqp=CAU'),
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
        ]
      )
    );
        
      
    

  }
}