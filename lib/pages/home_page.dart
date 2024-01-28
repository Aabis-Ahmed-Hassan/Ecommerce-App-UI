import 'dart:math';

import 'package:ecommere_store_ui/pages/product_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var randomNumber = Random();

  List productImageLink = [
    'assets/product_ (1).png',
    'assets/product_ (2).png',
    'assets/product_ (3).png',
    'assets/product_ (4).png',
    'assets/product_ (5).png',
    'assets/product_ (6).png',
    'assets/product_ (7).png',
    'assets/product_ (8).png',
    'assets/product_ (9).png',
    'assets/product_ (10).png',
    'assets/product_ (11).png',
    'assets/product_ (12).png',
  ];

  List productBrandName = [
    'SonicHorizon',
    'TimeBeat',
    'RhythmSync',
    'AudioChrono',
    'SonicHorizon',
    'RhythmSync',
    'TempoTech',
    'SonicHorizon',
    'AudioChrono',
    'TimeBeat',
    'RhythmSync',
    'SonicHorizon',
  ];

  List productTitle = [
    'EarPods',
    'TempoElite',
    'ChronoCraft',
    'HorizonSync',
    'EonElegance',
    'CelestialGaze',
    'NovaStyle',
    'QuantumQuest',
    'ZenithAura',
    'SonicWave',
    'EchoHarmony',
    'PulseBeat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Banner
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage('assets/1.jpg'),
                  ),
                ),
                const Positioned(
                  left: 20,
                  right: 0,
                  bottom: 30,
                  child: Text(
                    'Best Gadgets',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            //Below Banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Sale and View All Text
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sale',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(6, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(
                                  title: productTitle[index],
                                  imageLink: productImageLink[index],
                                  productBrandName: productBrandName[index],
                                ),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                ),
                                child: Stack(
                                  children: [
                                    Image(
                                      height: 150,
                                      image:
                                          AssetImage(productImageLink[index]),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child:
                                          Text('-${randomNumber.nextInt(50)}%',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              )),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  for (var i = 0; i < 5; i++)
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffFFBA49),
                                    ),
                                  Text(
                                    '(${randomNumber.nextInt(50)})',
                                    style: const TextStyle(
                                      color: Color(0xff9B9B9B),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                productBrandName[index],
                                style: const TextStyle(
                                  color: Color(0xff9B9B9B),
                                ),
                              ),
                              Text(
                                productTitle[index],
                                style: const TextStyle(
                                  color: Color(0xff222222),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${randomNumber.nextInt(15) + 21}\$',
                                    style: const TextStyle(
                                        color: Color(0xff9B9B9B),
                                        fontSize: 16,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '  ${randomNumber.nextInt(15) + 5}\$',
                                    style: const TextStyle(
                                        color: Color(0xffDB3022),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Text(
                    'You have never seen it before!',
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        6,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                      title: productTitle[index],
                                      imageLink: productImageLink[index],
                                      productBrandName: productBrandName[index],
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image(
                                          height: 150,
                                          image: AssetImage(
                                              productImageLink[index + 6]),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text('New',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      for (var i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xffFFBA49),
                                        ),
                                      Text(
                                        '(${randomNumber.nextInt(50) + 1})',
                                        style: const TextStyle(
                                          color: Color(0xff9B9B9B),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    productBrandName[index],
                                    style: const TextStyle(
                                      color: Color(0xff9B9B9B),
                                    ),
                                  ),
                                  Text(
                                    productTitle[index],
                                    style: const TextStyle(
                                      color: Color(0xff222222),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${randomNumber.nextInt(15) + 21}\$',
                                        style: const TextStyle(
                                          color: Color(0xff9B9B9B),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
